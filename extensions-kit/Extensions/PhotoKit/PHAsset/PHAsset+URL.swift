//
//  PHAsset+URL.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 13/06/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Photos

public extension PHAsset {
    
    // MARK: - Enums
    
    enum PHAssetError: Error {
        case requestCannotBePerformed(String)
    }
    
    // MARK: - Methods
    
    /// Provides possibility to get URL for image and video media types.
    ///
    /// - Parameter completionHandler: is an escaping closure that returns a URL for a requested media type
    /// - Throws: PHAssetError with String description 
    func url(completionHandler : @escaping ((_ responseURL : URL?) -> Void)) throws {
        switch mediaType {
        case .image :
            let options: PHContentEditingInputRequestOptions = PHContentEditingInputRequestOptions()
            options.canHandleAdjustmentData = {(adjustmeta: PHAdjustmentData) -> Bool in
                return true
            }
            self.requestContentEditingInput(with: options, completionHandler: { (contentEditingInput, info) in
                completionHandler(contentEditingInput!.fullSizeImageURL)
            })
        case .video:
            let options: PHVideoRequestOptions = PHVideoRequestOptions()
            options.version = .original
            PHImageManager.default().requestAVAsset(forVideo: self, options: options, resultHandler: { (asset, audioMix, info) in
                if let urlAsset = asset as? AVURLAsset {
                    let localVideoUrl = urlAsset.url
                    completionHandler(localVideoUrl)
                } else {
                    completionHandler(nil)
                }
            })
        default:
            throw PHAssetError.requestCannotBePerformed("The requested media type is not supported")
        }
    }
}
