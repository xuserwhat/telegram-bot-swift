// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias ExportChatInviteLinkCompletion = (_ result: exported invite link as String?, _ error: DataTaskError?) -> ()

    /// Use this method to export an invite link to a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns exported invite link as String on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    /// - Returns: exported invite link as String on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#exportchatinvitelink>
    @discardableResult
    public func exportChatInviteLinkSync(
            chat_id: ChatId,
            _ parameters: [String: Any?] = [:]) -> exported invite link as String? {
        return requestSync("exportChatInviteLink", defaultParameters["exportChatInviteLink"], parameters, [
            "chat_id": chat_id])
    }

    /// Use this method to export an invite link to a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns exported invite link as String on success.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    /// - Returns: exported invite link as String on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#exportchatinvitelink>
    public func exportChatInviteLinkAsync(
            chat_id: ChatId,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: ExportChatInviteLinkCompletion? = nil) {
        return requestAsync("exportChatInviteLink", defaultParameters["exportChatInviteLink"], parameters, [
            "chat_id": chat_id],
            queue: queue, completion: completion)
    }
}

