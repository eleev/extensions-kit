//
//  Data+MimeType.swift
//  ExtendedFoundation
//
//  Created by Astemir Eleev on 23/02/2020.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

public extension Data {
    
    // MARK: - Image Types
    
    var isPng: Bool {
        return matches(bytes: [0x89, 0x50, 0x4E, 0x47])
    }
    
    var isJPEG: Bool {
        return matches(bytes: [0xFF, 0xD8, 0xFF])
    }
    
    var isJpg: Bool {
        return isJPEG
    }
    
    var isGif: Bool {
        return matches(bytes: [0x47, 0x49, 0x46])
    }
    
    var isWebp: Bool {
        return matches(bytes: [0x57, 0x45, 0x42, 0x50], range: 8...11)
    }
    
    var isTiff: Bool {
        return matches(bytes: [0x49, 0x49, 0x2A, 0x00]) ||
            matches(bytes: [0x4D, 0x4D, 0x00, 0x2A])
    }
    
    var isBmp: Bool {
        return matches(bytes: [0x42, 0x4D])
    }
    
    var isPsd: Bool {
        return matches(bytes: [0x38, 0x42, 0x50, 0x53])
    }
    
    // MARK: - Audio Types
    
    var isAmr: Bool {
        return matches(bytes: [0x23, 0x21, 0x41,
                               0x4D, 0x52, 0x0A])
    }
    
    var isMp3: Bool {
        return matches(bytes: [0x49, 0x44, 0x33]) ||
            matches(bytes: [0xFF, 0xFB])
    }
    
    var isOgg: Bool {
        return matches(bytes: [0x4F, 0x67, 0x67, 0x53])
    }
    
    var isFlac: Bool {
        return matches(bytes: [0x66, 0x4C, 0x61, 0x43])
    }
    
    var isWav: Bool {
        return matches(bytes: [0x52, 0x49, 0x46, 0x46]) &&
            matches(bytes: [0x57, 0x41, 0x56, 0x45], range: 8...11)
    }
    
    var isMid: Bool {
        return matches(bytes: [0x4D, 0x54, 0x68, 0x64])
    }
    
    var isM4a: Bool {
        return matches(bytes: [0x4D, 0x34, 0x41, 0x20]) ||
            matches(bytes: [0x66, 0x74, 0x79, 0x70,
                            0x4D, 0x34, 0x41],
                    range: 4...10)
    }
    
    var isOpus: Bool {
        return matches(bytes: [0x4F, 0x70, 0x75, 0x73,
                               0x48, 0x65, 0x61, 0x64],
                       range: 28...35)
    }
    
    // MARK: - Application Types
    
    var isIco: Bool {
        return matches(bytes: [0x00, 0x00, 0x01, 0x00])
    }
    
    var isSqlite: Bool {
        return matches(bytes: [0x53, 0x51, 0x4C, 0x69])
    }
    
    var isTar: Bool {
        return matches(bytes: [0x75, 0x73, 0x74, 0x61, 0x72],
                       range: 257...261)
    }
    
    var isRar: Bool {
        return matches(bytes: [0x52, 0x61, 0x72, 0x21, 0x1A, 0x07]) &&
            (matches(bytes: [0x0], range: 6...6) ||
                matches(bytes: [0x1], range: 6...6))
    }
    
    var isGzip: Bool {
        return matches(bytes: [0x1F, 0x8B, 0x08])
    }
    
    var isBz2: Bool {
        return matches(bytes: [0x42, 0x5A, 0x68])
    }
}
