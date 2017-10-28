// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias PinChatMessageCompletion = (_ result: Bool?, _ error: DataTaskError?) -> ()

    /// Use this method to pin a message in a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns True on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    ///     - message_id: Identifier of a message to pin
    ///     - disable_notification: Pass True, if it is not necessary to send a notification to all group members about the new pinned message
    /// - Returns: Bool on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#pinchatmessage>
    @discardableResult
    public func pinChatMessageSync(
            chat_id: ChatId,
            message_id: Int,
            disable_notification: Bool? = nil,
            _ parameters: [String: Any?] = [:]) -> Bool? {
        return requestSync("pinChatMessage", defaultParameters["pinChatMessage"], parameters, [
            "chat_id": chat_id,
            "message_id": message_id,
            "disable_notification": disable_notification])
    }

    /// Use this method to pin a message in a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns True on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target supergroup (in the format @supergroupusername)
    ///     - message_id: Identifier of a message to pin
    ///     - disable_notification: Pass True, if it is not necessary to send a notification to all group members about the new pinned message
    /// - Returns: Bool on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#pinchatmessage>
    public func pinChatMessageAsync(
            chat_id: ChatId,
            message_id: Int,
            disable_notification: Bool? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: PinChatMessageCompletion? = nil) {
        return requestAsync("pinChatMessage", defaultParameters["pinChatMessage"], parameters, [
            "chat_id": chat_id,
            "message_id": message_id,
            "disable_notification": disable_notification],
            queue: queue, completion: completion)
    }
}

