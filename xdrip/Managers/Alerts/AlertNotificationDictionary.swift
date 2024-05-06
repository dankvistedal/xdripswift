//
//  AlertNotificationDictionary.swift
//  xdrip
//
//  Created by Paul Plant on 11/5/24.
//  Copyright © 2024 Johan Degraeve. All rights reserved.
//

import Foundation

/// model of the data we'll send to the notification content extension as userInfo for alerts
struct AlertNotificationDictionary: Codable {
    var alertTitle: String?
    var bgValueString: String?
    var BgRangeDescriptionAsInt: Int?
    var trendString: String?
    var deltaString: String?
    var isMgDl: Bool?
    var alertUrgencyTypeRawValue: Int?
    
    var asDictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
