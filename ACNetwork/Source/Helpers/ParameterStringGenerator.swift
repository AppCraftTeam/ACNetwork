//
//  ParameterStringGenerator.swift
//  ACNetwork
//
//  Created by AppCraft LLC on 7/21/23.
//

import Foundation

public enum ParameterStringGenerator {
    
    public static func generate(with params: [String: Any]) -> String {
        let parameterArray = params.map { key, value -> String in
            guard let escapedKey = key.addingPercentEncodingForUrlQueryValue() else {
                return ""
            }
            if let stringValue = value as? String {
                guard let escapedValue = stringValue.addingPercentEncodingForUrlQueryValue() else {
                    return ""
                }
                return "\(escapedKey)=\(escapedValue)"
            }
            
            if let arrayValue = value as? [Any] {
                var arrayParameter: [String] = []
                
                for index in 0..<arrayValue.count {
                    var element: String
                    if let stringElement = arrayValue[index] as? String {
                        element = stringElement
                    } else {
                        element = "\(arrayValue[index])"
                    }
                    guard let escapedElement = element.addingPercentEncodingForUrlQueryValue() else {
                        continue
                    }
                    arrayParameter.append(escapedElement)
                }
                
                return "\(escapedKey)=\(arrayParameter.joined(separator: ","))"
            }
            guard let escapedValue = "\(value)".addingPercentEncodingForUrlQueryValue() else {
                return ""
            }
            return "\(escapedKey)=\(escapedValue)"
        }
        return parameterArray.joined(separator: "&")
    }
}
