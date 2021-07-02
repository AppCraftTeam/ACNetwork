//
//  String+PercentEncoding.swift
//  ACNetwork
//
//  Created by AppCraft LLC on 6/30/21.
//

import Foundation

extension String {
    func addingPercentEncodingForUrlQueryValue() -> String? {
        let generalDelimitersToEncode = ":#[]@"
        let subDelimitersToEncode = "!$&'()*+,;="
        
        var allowed = CharacterSet.urlQueryAllowed
        allowed.remove(charactersIn: generalDelimitersToEncode + subDelimitersToEncode)
        
        return addingPercentEncoding(withAllowedCharacters: allowed)
    }
}
