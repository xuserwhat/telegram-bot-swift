// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object represents a chat.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#chat>

public struct Chat: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Unique identifier for this chat. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
    public var id: Int64 {
        get { return json["id"].int64Value }
        set { json["id"].int64Value = newValue }
    }

    /// Type of chat, can be either “private”, “group”, “supergroup” or “channel”
    public var type_string: String {
        get { return json["type"].stringValue }
        set { json["type"].stringValue = newValue }
    }

    /// Optional. Title, for supergroups, channels and group chats
    public var title: String? {
        get { return json["title"].string }
        set { json["title"].string = newValue }
    }

    /// Optional. Username, for private chats, supergroups and channels if available
    public var username: String? {
        get { return json["username"].string }
        set { json["username"].string = newValue }
    }

    /// Optional. First name of the other party in a private chat
    public var first_name: String? {
        get { return json["first_name"].string }
        set { json["first_name"].string = newValue }
    }

    /// Optional. Last name of the other party in a private chat
    public var last_name: String? {
        get { return json["last_name"].string }
        set { json["last_name"].string = newValue }
    }

    /// Optional. True if a group has ‘All Members Are Admins’ enabled.
    public var all_members_are_administrators: Bool? {
        get { return json["all_members_are_administrators"].bool }
        set { json["all_members_are_administrators"].bool = newValue }
    }

    /// Optional. Chat photo. Returned only in getChat.
    public var photo: ChatPhoto? {
        get {
            let value = json["photo"]
            return value.isNullOrUnknown ? nil : ChatPhoto(json: value)
        }
        set {
            json["photo"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. Description, for supergroups and channel chats. Returned only in getChat.
    public var description: String? {
        get { return json["description"].string }
        set { json["description"].string = newValue }
    }

    /// Optional. Chat invite link, for supergroups and channel chats. Returned only in getChat.
    public var invite_link: String? {
        get { return json["invite_link"].string }
        set { json["invite_link"].string = newValue }
    }

    /// Optional. Pinned message, for supergroups. Returned only in getChat.
    public var pinned_message: Message? {
        get {
            let value = json["pinned_message"]
            return value.isNullOrUnknown ? nil : Message(json: value)
        }
        set {
            json["pinned_message"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. For supergroups, name of group sticker set. Returned only in getChat.
    public var sticker_set_name: String? {
        get { return json["sticker_set_name"].string }
        set { json["sticker_set_name"].string = newValue }
    }

    /// Optional. True, if the bot can change the group sticker set. Returned only in getChat.
    public var can_set_sticker_set: Bool? {
        get { return json["can_set_sticker_set"].bool }
        set { json["can_set_sticker_set"].bool = newValue }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
