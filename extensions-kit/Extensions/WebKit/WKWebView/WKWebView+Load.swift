//
//  WKWebView+Load.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 25/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import WebKit

extension WKWebView {
    
    func load(_ urlString: String) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            load(request)
        }
    }
}
