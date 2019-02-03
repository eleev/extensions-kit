//
//  FileOutputStream.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 28/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

/// Prints the output stream to the specified file for the given `URL` and `encoding`
public struct FileOutputStream: TextOutputStream {
    
    // MARK: - Properties
    
    private let fileHandle: FileHandle
    public let encoding: String.Encoding
    
    // MARK: - Initializers
    
    public init(_ fileHandle: FileHandle, encoding: String.Encoding = .utf8) {
        self.fileHandle = fileHandle
        self.encoding = encoding
    }
    
    // MARK: - Conformance to TextOutputStream proocol
    
    public mutating func write(_ string: String) {
        guard let data = string.data(using: encoding) else { return }
        fileHandle.write(data)
    }
}
