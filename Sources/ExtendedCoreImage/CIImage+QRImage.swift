//
//  CIImage+QRImage.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 08/01/2019.
//  Copyright © 2019 Astemir Eleev. All rights reserved.
//

import CoreImage.CIImage

extension CIImage {
    
    /// Generates a QR image from the input `text` and with an optional `scale` parameter that specifies the affine transformation for the output `CIImage`
    public static func qrImage(from text: String, scaledBy scale: CGPoint = CGPoint(x: 10, y: 10)) -> CIImage? {
        guard let qrFilter = CIFilter(name: "CIQRCodeGenerator") else { return nil }
        let qrData = text.data(using: String.Encoding.ascii)
        qrFilter.setValue(qrData, forKey: "inputMessage")
        
        let qrTransform = CGAffineTransform(scaleX: scale.x, y: scale.y)
        return qrFilter.outputImage?.transformed(by: qrTransform)
    }
}
