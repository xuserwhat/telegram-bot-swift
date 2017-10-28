// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// Represents a link to an animated GIF file. By default, this animated GIF file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#inlinequeryresultgif>

public struct InlineQueryResultGif: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Type of the result, must be gif
    public var type_string: String {
        get { return json["type"].stringValue }
        set { json["type"].stringValue = newValue }
    }

    /// Unique identifier for this result, 1-64 bytes
    public var id: String {
        get { return json["id"].stringValue }
        set { json["id"].stringValue = newValue }
    }

    /// A valid URL for the GIF file. File size must not exceed 1MB
    public var gif_url: String {
        get { return json["gif_url"].stringValue }
        set { json["gif_url"].stringValue = newValue }
    }

    /// Optional. Width of the GIF
    public var gif_width: Int? {
        get { return json["gif_width"].int }
        set { json["gif_width"].int = newValue }
    }

    /// Optional. Height of the GIF
    public var gif_height: Int? {
        get { return json["gif_height"].int }
        set { json["gif_height"].int = newValue }
    }

    /// Optional. Duration of the GIF
    public var gif_duration: Int? {
        get { return json["gif_duration"].int }
        set { json["gif_duration"].int = newValue }
    }

    /// URL of the static thumbnail for the result (jpeg or gif)
    public var thumb_url: String {
        get { return json["thumb_url"].stringValue }
        set { json["thumb_url"].stringValue = newValue }
    }

    /// Optional. Title for the result
    public var title: String? {
        get { return json["title"].string }
        set { json["title"].string = newValue }
    }

    /// Optional. Caption of the GIF file to be sent, 0-200 characters
    public var caption: String? {
        get { return json["caption"].string }
        set { json["caption"].string = newValue }
    }

    /// Optional. Inline keyboard attached to the message
    public var reply_markup: InlineKeyboardMarkup? {
        get {
            let value = json["reply_markup"]
            return value.isNullOrUnknown ? nil : InlineKeyboardMarkup(json: value)
        }
        set {
            json["reply_markup"] = newValue?.json ?? JSON.null
        }
    }

    /// Optional. Content of the message to be sent instead of the GIF animation
    public var input_message_content: InputMessageContent? {
        get {
            let value = json["input_message_content"]
            return value.isNullOrUnknown ? nil : InputMessageContent(json: value)
        }
        set {
            json["input_message_content"] = newValue?.json ?? JSON.null
        }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
