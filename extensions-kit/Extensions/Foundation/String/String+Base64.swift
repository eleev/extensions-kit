//
//  String+Base64.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 29/08/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension String {
    
    /// Encodes self to Base64 String encoding
    ///
    /// - Returns: encoded Base64 String
    public func toBase64() -> String {
        return Data(utf8).base64EncodedString()
    }
    
    /// Decodes self from Base64 encoding
    ///
    /// - Returns: optional String that is decoded from Base64 encoding. Nil if the operation was unsuccessful
    public func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
}
