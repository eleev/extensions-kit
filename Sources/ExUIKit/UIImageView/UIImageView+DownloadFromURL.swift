//
//  UIImageView+DownloadFromURL.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import UIKit.UIImageView

extension UIImageView {
    
    func downloadImageFrom(url: String, with defaultImage: UIImage? = nil, completion: @escaping(_ image: UIImage)->Void) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url, completionHandler: { data, response, error -> Void in
            
            guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else {
                    if let defaultImage = defaultImage {
                        completion(defaultImage)
                    }
                    return
            }
            
            completion(image)
        }).resume()
    }
    
}
