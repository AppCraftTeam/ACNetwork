//
//  Data+Modify.swift
//  ACNetwork
//
//  Created by AppCraft LLC on 6/30/21.
//

import Foundation

extension Data {
    mutating func append(_ string: String) {
        if let data = string.data(using: .utf8) {
            append(data)
        }
    }
}
