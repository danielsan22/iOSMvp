//
//  MessagesServices.swift
//  NavigationExample
//
//  Created by dsanchezpc on 07/12/18.
//  Copyright © 2018 dsanchezpc. All rights reserved.
//

import Foundation
import Just

class MessagesServices {
    class func get(sucess: @escaping (_ messages: [Message]) -> Void, failure: @escaping (_ error: Error?) -> Void) {
        Just.get(URL(string: RoutesUrls.getMessages.rawValue)!) { r in
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .formatted(Formatter.iso8601)
                let messages = try decoder.decode([Message].self, from: r.content!)
                sucess(messages)
            } catch {
                failure(nil)
            }
        }
    }
}

enum RoutesUrls: String {
    case getMessages = "https://dsr-test-develop.vapor.cloud/api/todos"
}

extension Formatter {
    static let iso8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssz"
        return formatter
    }()
}

