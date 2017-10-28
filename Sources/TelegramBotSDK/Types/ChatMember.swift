// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object contains information about one member of a chat.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#chatmember>

public struct ChatMember: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Information about the user
    public var user: User {
        get { return User(json: json["user"]) }
        set { json["user"] = newValue.json }
    }

    /// The member's status in the chat. Can be “creator”, “administrator”, “member”, “restricted”, “left” or “kicked”
    public var status_string: String {
        get { return json["status"].stringValue }
        set { json["status"].stringValue = newValue }
    }

    /// Optional. Restictred and kicked only. Date when restrictions will be lifted for this user, unix time
    public var until_date: Int? {
        get { return json["until_date"].int }
        set { json["until_date"].int = newValue }
    }

    /// Optional. Administrators only. True, if the bot is allowed to edit administrator privileges of that user
    public var can_be_edited: Bool? {
        get { return json["can_be_edited"].bool }
        set { json["can_be_edited"].bool = newValue }
    }

    /// Optional. Administrators only. True, if the administrator can change the chat title, photo and other settings
    public var can_change_info: Bool? {
        get { return json["can_change_info"].bool }
        set { json["can_change_info"].bool = newValue }
    }

    /// Optional. Administrators only. True, if the administrator can post in the channel, channels only
    public var can_post_messages: Bool? {
        get { return json["can_post_messages"].bool }
        set { json["can_post_messages"].bool = newValue }
    }

    /// Optional. Administrators only. True, if the administrator can edit messages of other users, channels only
    public var can_edit_messages: Bool? {
        get { return json["can_edit_messages"].bool }
        set { json["can_edit_messages"].bool = newValue }
    }

    /// Optional. Administrators only. True, if the administrator can delete messages of other users
    public var can_delete_messages: Bool? {
        get { return json["can_delete_messages"].bool }
        set { json["can_delete_messages"].bool = newValue }
    }

    /// Optional. Administrators only. True, if the administrator can invite new users to the chat
    public var can_invite_users: Bool? {
        get { return json["can_invite_users"].bool }
        set { json["can_invite_users"].bool = newValue }
    }

    /// Optional. Administrators only. True, if the administrator can restrict, ban or unban chat members
    public var can_restrict_members: Bool? {
        get { return json["can_restrict_members"].bool }
        set { json["can_restrict_members"].bool = newValue }
    }

    /// Optional. Administrators only. True, if the administrator can pin messages, supergroups only
    public var can_pin_messages: Bool? {
        get { return json["can_pin_messages"].bool }
        set { json["can_pin_messages"].bool = newValue }
    }

    /// Optional. Administrators only. True, if the administrator can add new administrators with a subset of his own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
    public var can_promote_members: Bool? {
        get { return json["can_promote_members"].bool }
        set { json["can_promote_members"].bool = newValue }
    }

    /// Optional. Restricted only. True, if the user can send text messages, contacts, locations and venues
    public var can_send_messages: Bool? {
        get { return json["can_send_messages"].bool }
        set { json["can_send_messages"].bool = newValue }
    }

    /// Optional. Restricted only. True, if the user can send audios, documents, photos, videos, video notes and voice notes, implies can_send_messages
    public var can_send_media_messages: Bool? {
        get { return json["can_send_media_messages"].bool }
        set { json["can_send_media_messages"].bool = newValue }
    }

    /// Optional. Restricted only. True, if the user can send animations, games, stickers and use inline bots, implies can_send_media_messages
    public var can_send_other_messages: Bool? {
        get { return json["can_send_other_messages"].bool }
        set { json["can_send_other_messages"].bool = newValue }
    }

    /// Optional. Restricted only. True, if user may add web page previews to his messages, implies can_send_media_messages
    public var can_add_web_page_previews: Bool? {
        get { return json["can_add_web_page_previews"].bool }
        set { json["can_add_web_page_previews"].bool = newValue }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
