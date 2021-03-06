// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// Contains information about why a request was unsuccessful.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#responseparameters>

public struct ResponseParameters: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Optional. The group has been migrated to a supergroup with the specified identifier. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
    public var migrate_to_chat_id: Int64? {
        get { return json["migrate_to_chat_id"].int64 }
        set { json["migrate_to_chat_id"].int64 = newValue }
    }

    /// Optional. In case of exceeding flood control, the number of seconds left to wait before the request can be repeated
    public var retry_after: Int? {
        get { return json["retry_after"].int }
        set { json["retry_after"].int = newValue }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
