//
//  HTTPMethod.swift
//  ACNetwork
//
//  Created by AppCraft LLC on 6/30/21.
//

import Foundation

public enum HTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
    
    public var stringValue: String {
        self.rawValue
    }
}
