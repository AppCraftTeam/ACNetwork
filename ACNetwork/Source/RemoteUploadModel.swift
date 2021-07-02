//
//  RemoteUploadModel.swift
//  ACNetwork
//
//  Created by AppCraft LLC on 6/30/21.
//

import Foundation

public struct RemoteUploadModel {
    public var filename: String
    public var data: Data
    
    public init(filename: String, data: Data) {
        self.filename = filename
        self.data = data
    }
}
