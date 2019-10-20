//
//  UnicodeOutputStream.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 28/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import Foundation

/// Prints all the `Unicode` characters with the following scheme:
///
/// Index: UnicodeScalar CodePoint (tabulation) UnicodeScalarName
///
/// Can be attached the output completion handler in order to be able to debug the output stream
public struct UnicodeOutputStream: TextOutputStream {
    
    // MARK: - Properties
    
    private var output: String = "" {
        didSet {
            outputCompletion?(output)
        }
    }
    internal var outputCompletion: ((String)->Void)?
    
    // MARK: - Conformance to TextOutputStream protocol
    
    public mutating func write(_ string: String) {
        guard !string.isEmpty, string != "\n" else { return }
        
        for (index, scalar) in string.unicodeScalars.lazy.enumerated() {
            let name = scalar.name ?? ""
            let codePoint = String(format: "U+%04X", scalar.value)
            
            output = "\(index): \(scalar) \(codePoint)\t\(name)"
            print(output)
        }
    }
}

// MARK: Internal extension for the Unicode.Scalar name

extension Unicode.Scalar {
    var name: String? {
        guard var escapedName =
            "\(self)".applyingTransform(.toUnicodeName,
                                        reverse: false)
            else {
                return nil
        }
        
        escapedName.removeFirst(3) // remove "\\N{"
        escapedName.removeLast(1) // remove "}"
        
        return escapedName
    }
}
