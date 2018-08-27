//
//  CGRect+AspectFit.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 15/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import CoreGraphics

extension CGRect {
    
    func aspectFit(inRect target: CGRect) -> CGRect {
        let scale: CGFloat = {
            let scale = target.width / self.width

            return self.height * scale <= target.height ?
                scale :
                target.height / self.height
        }()

        let width = self.width * scale
        let height = self.height * scale
        let x = target.midX - width / 2
        let y = target.midY - height / 2
        
        return CGRect(x: x, y: y, width: width, height: height)
    }
}
