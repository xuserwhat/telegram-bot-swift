//
// Command.swift
//
// This source file is part of the Telegram Bot SDK for Swift (unofficial).
//
// Copyright (c) 2015 - 2016 Andrey Fidrya and the project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See LICENSE.txt for license information
// See AUTHORS.txt for the list of the project authors
//

import Foundation

public class Command {
    typealias T = Command

    public struct Options: OptionSet {
        public var rawValue: Int
        public init(rawValue: Int) { self.rawValue = rawValue }

        /// Do not skip "/" prefix in command name, if present.
        /// Note that comparision is still case insensitive by default.
        public static let exactMatch = Options(rawValue: 1 << 0)

        /// Require command to be prefixed with "/".
        /// By default prefixing is optional.
        /// Ignored if `exactMatch` flag is set.
        public static let startSymbolRequired = Options(rawValue: 1 << 1)
        
        /// Case sensitive comparision of commands.
        public static let caseSensitive = Options(rawValue: 1 << 2)
    }
    
    static let whitespaceAndNewline = CharacterSet.whitespacesAndNewlines

    let name: String
    let nameWords: [String]
    let options: Options
    let startSymbol: String?
    
    public init(_ name: String, options: Options = [], startSymbol: String? = nil) {
        self.options = options
        let finalName: String
        let finalStartSymbol: String?
        
        if let startSymbol = startSymbol {
            if startSymbol.count > 1 {
                finalStartSymbol = startSymbol[0]
                print("WARNING: startSymbol arguments should be a 1 character String")
            } else {
                finalStartSymbol = startSymbol
            }
        } else {
            finalStartSymbol = startSymbol
        }
        
        if !options.contains(.exactMatch) && name.hasPrefix(finalStartSymbol ?? "/") {
            finalName = name.substring(from: name.index(after: name.startIndex))
            print("WARNING: Command name shouldn't start with '/', the slash is added automatically if needed")
        } else {
            finalName = name
        }
        self.name = finalName
        nameWords = finalName.components(separatedBy: T.whitespaceAndNewline)
        self.startSymbol = finalStartSymbol
    }
    	
    public func fetchFrom(_ scanner: Scanner, caseSensitive: Bool = false) -> (command: String, startsWithSymbol: Bool)? {
        if nameWords.isEmpty {
            // This is "match all" rule
            guard let word = scanner.scanUpToCharacters(from: T.whitespaceAndNewline) else {
                return nil
            }

            let startsWithSymbol = word.hasPrefix(startSymbol ?? "/")
            if options.contains(.startSymbolRequired) && !startsWithSymbol {
                return nil
            }
            return (word, startsWithSymbol)
        }

        let caseSensitive = caseSensitive || options.contains(.caseSensitive)
        var userCommand = ""
        var isFirstWord = true
        var firstWordStartsWithSymbol = false
        
        // Each word in nameWords should match a word (possibly abbreviated) from scanner
        for nameWord in nameWords {
            guard let word = scanner.scanUpToCharacters(from: T.whitespaceAndNewline) else {
                return nil
            }
            
            if isFirstWord {
                firstWordStartsWithSymbol = word.hasPrefix(startSymbol ?? "/")
            }
            
            if options.contains(.exactMatch) {
                
                guard nameWord.hasPrefix(word, caseInsensitive: !caseSensitive) else {
                    return nil
                }
                
                userCommand += word
                
            } else {
                
                if isFirstWord && options.contains(.startSymbolRequired) {
                    guard firstWordStartsWithSymbol else { return nil }
                }
                
                let processedWord: String
                if isFirstWord && firstWordStartsWithSymbol {
                    processedWord = word.substring(from: word.index(after: word.startIndex))
                } else {
                    processedWord = word
                }
                
                guard nameWord.hasPrefix(processedWord, caseInsensitive: !caseSensitive) else {
                    return nil
                }
                
                userCommand += processedWord
            }
            
            isFirstWord = false
        }
        return (userCommand, firstWordStartsWithSymbol)
    }
}
