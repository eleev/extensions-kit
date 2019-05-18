//
//  Decodable+DecodeFromFile.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 24/12/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

extension Decodable {
  
    /// Decodes a file into a type
    ///
    /// - Parameters:
    ///   - fileName: the target file name that will be used to decode into a type
    ///   - fileExtension: a file's extension. The default value is ".json"
    ///   - bundle: the app's bundle, The default value is ".main"
    /// - Returns: an instantiated object of type Self
    /// - Throws: may throw an error of type DecodableError, more specifically .missingFile
    public static func decodeFromFile(
        named fileName: String,
        with fileExtension: String = "json",
        in bundle: Bundle = .main
        ) throws -> Self {
        guard let url = bundle.url(forResource: fileName,
                                   withExtension: fileExtension) else {
                                    throw DecodableError.missingFile
        }
        
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        
        return try decoder.decode(self, from: data)
    }
}


public enum DecodableError: Error {
    case missingFile
}
