// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias GetStickerSetCompletion = (_ result: StickerSet?, _ error: DataTaskError?) -> ()

    /// Use this method to get a sticker set. On success, a StickerSet object is returned.
    /// - Parameters:
    ///     - name: Name of the sticker set
    /// - Returns: StickerSet on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#getstickerset>
    @discardableResult
    public func getStickerSetSync(
            name: String,
            _ parameters: [String: Any?] = [:]) -> StickerSet? {
        return requestSync("getStickerSet", defaultParameters["getStickerSet"], parameters, [
            "name": name])
    }

    /// Use this method to get a sticker set. On success, a StickerSet object is returned.
    /// - Parameters:
    ///     - name: Name of the sticker set
    /// - Returns: StickerSet on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#getstickerset>
    public func getStickerSetAsync(
            name: String,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: GetStickerSetCompletion? = nil) {
        return requestAsync("getStickerSet", defaultParameters["getStickerSet"], parameters, [
            "name": name],
            queue: queue, completion: completion)
    }
}

