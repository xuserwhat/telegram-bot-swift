// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import SwiftyJSON

/// This object contains information about an incoming shipping query.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#shippingquery>

public struct ShippingQuery: JsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: JSON

    /// Unique query identifier
    public var id: String {
        get { return json["id"].stringValue }
        set { json["id"].stringValue = newValue }
    }

    /// User who sent the query
    public var from: User {
        get { return User(json: json["from"]) }
        set { json["from"] = newValue.json }
    }

    /// Bot specified invoice payload
    public var invoice_payload: String {
        get { return json["invoice_payload"].stringValue }
        set { json["invoice_payload"].stringValue = newValue }
    }

    /// User specified shipping address
    public var shipping_address: ShippingAddress {
        get { return ShippingAddress(json: json["shipping_address"]) }
        set { json["shipping_address"] = newValue.json }
    }

    public init(json: JSON = [:]) {
        self.json = json
    }
}
