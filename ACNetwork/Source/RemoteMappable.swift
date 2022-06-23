//
//  RemoteMappable.swift
//  ACNetwork
//
//  Created by AppCraft LLC on 6/30/21.
//

import Foundation

public protocol RemoteMappable {
    func mapResponseToDomain() -> AnyObject?
    func mapResponseFromDomain(data: AnyObject)
}

extension RemoteMappable {
    
    public func mapResponseToDomain() -> AnyObject? {
        NSLog("[ACNetwork:RemoteMappable] - ERROR: \(self) response to domain mapper not implemented.")
        return self as AnyObject
    }
    
    public func mapResponseFromDomain(data: AnyObject) {
        NSLog("[ACNetwork:RemoteMappable] - ERROR: \(self) domain to response mapper not implemented.")
    }
}
