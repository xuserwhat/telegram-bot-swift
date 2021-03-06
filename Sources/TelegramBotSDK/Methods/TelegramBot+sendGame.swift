// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias SendGameCompletion = (_ result: Message?, _ error: DataTaskError?) -> ()

    /// Use this method to send a game. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat
    ///     - game_short_name: Short name of the game, serves as the unique identifier for the game. Set up your games via Botfather.
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: A JSON-serialized object for an inline keyboard. If empty, one ‘Play game_title’ button will be shown. If not empty, the first button must launch the game.
    /// - Returns: Message on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#sendgame>
    @discardableResult
    public func sendGameSync(
            chat_id: Int64,
            game_short_name: String,
            disable_notification: Bool? = nil,
            reply_to_message_id: Int? = nil,
            reply_markup: InlineKeyboardMarkup? = nil,
            _ parameters: [String: Any?] = [:]) -> Message? {
        return requestSync("sendGame", defaultParameters["sendGame"], parameters, [
            "chat_id": chat_id,
            "game_short_name": game_short_name,
            "disable_notification": disable_notification,
            "reply_to_message_id": reply_to_message_id,
            "reply_markup": reply_markup])
    }

    /// Use this method to send a game. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat
    ///     - game_short_name: Short name of the game, serves as the unique identifier for the game. Set up your games via Botfather.
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: A JSON-serialized object for an inline keyboard. If empty, one ‘Play game_title’ button will be shown. If not empty, the first button must launch the game.
    /// - Returns: Message on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#sendgame>
    public func sendGameAsync(
            chat_id: Int64,
            game_short_name: String,
            disable_notification: Bool? = nil,
            reply_to_message_id: Int? = nil,
            reply_markup: InlineKeyboardMarkup? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: SendGameCompletion? = nil) {
        return requestAsync("sendGame", defaultParameters["sendGame"], parameters, [
            "chat_id": chat_id,
            "game_short_name": game_short_name,
            "disable_notification": disable_notification,
            "reply_to_message_id": reply_to_message_id,
            "reply_markup": reply_markup],
            queue: queue, completion: completion)
    }
}

