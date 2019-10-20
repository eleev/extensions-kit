//
//  CAAnimation+PatternReplicator.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 01/10/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

#if canImport(UIKit)
import UIKit

extension CAAnimation {
    
    @discardableResult
    public class func patternReplocator(with image: UIImage,
                                        size: CGSize,
                                        duration: CFTimeInterval = 2.0,
                                        opacity: ClosedRange<CFTimeInterval> = 0.1...1.0,
                                        delay: TimeInterval = 0.1,
                                        targetLayer: CALayer) -> CALayer {
        
        let replicatorLayer = CAReplicatorLayer()
        replicatorLayer.frame.size = size
        replicatorLayer.masksToBounds = true
        targetLayer.addSublayer(replicatorLayer)
        
        let imageLayer = CALayer()
        imageLayer.contents = image.cgImage
        imageLayer.frame.size = image.size
        replicatorLayer.addSublayer(imageLayer)
        
        let instanceCount = size.width / image.size.width
        replicatorLayer.instanceCount = Int(ceil(instanceCount))
        
        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(
            image.size.width, 0, 0
        )
        let colorOffset = -1 / Float(replicatorLayer.instanceCount)
        replicatorLayer.instanceRedOffset = colorOffset
        replicatorLayer.instanceGreenOffset = colorOffset
        
        let verticalReplicatorLayer = CAReplicatorLayer()
        verticalReplicatorLayer.frame.size = size
        verticalReplicatorLayer.masksToBounds = true
        verticalReplicatorLayer.instanceBlueOffset = colorOffset
        targetLayer.addSublayer(verticalReplicatorLayer)
        
        let verticalInstanceCount = size.height / image.size.height
        verticalReplicatorLayer.instanceCount = Int(ceil(verticalInstanceCount))
        verticalReplicatorLayer.instanceTransform = CATransform3DMakeTranslation(
            0, image.size.height, 0
        )
        verticalReplicatorLayer.addSublayer(replicatorLayer)
        
        let delay = TimeInterval(0.1)
        replicatorLayer.instanceDelay = delay
        verticalReplicatorLayer.instanceDelay = delay
        
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.duration = 2
        animation.fromValue = 1
        animation.toValue = 0.1
        animation.autoreverses = true
        animation.repeatCount = .infinity
        animation.timingFunction = CAMediaTimingFunction.init(name: CAMediaTimingFunctionName.easeInEaseOut)
        imageLayer.add(animation, forKey: "wavyscale")
        
        return replicatorLayer
    }
}

#endif
