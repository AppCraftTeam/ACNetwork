//
//  RemoteConfiguration.swift
//  ACNetwork
//
//  Created by AppCraft LLC on 6/30/21.
//

import Foundation

public class RemoteConfiguration {
    
    public static var shared: RemoteConfiguration = RemoteConfiguration()
    
    public var sessionConfiguration: URLSessionConfiguration {
        self.sessionConfigurationValue
    }
    
    public var isLoggingEnabled: Bool {
        #if DEBUG
        return self.isLoggingEnabledValue
        #else
        return false
        #endif
    }
    
    private var sessionConfigurationValue: URLSessionConfiguration
    private var isLoggingEnabledValue: Bool
    
    private init() {
        self.sessionConfigurationValue = URLSessionConfiguration.default
        self.isLoggingEnabledValue = false
    }
    
    public func setConfiguration(value: URLSessionConfiguration) {
        self.sessionConfigurationValue = value
    }
    
    public func enableLogging(value: Bool) {
        self.isLoggingEnabledValue = value
    }
}
