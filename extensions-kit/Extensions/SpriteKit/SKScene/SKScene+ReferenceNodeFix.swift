//
//  SKScene+ReferenceNodeFix.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 03/11/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import SpriteKit

extension SKScene {
    
    /// A small fix that resolves the default behavior for nodes that were referenced from differnet .sks files. The thing is that they do not launch their animations by default, so this small `hack` fixes this issue.
    ///
    /// The method should be called in `didMove(to view: SKView)`
    func launchReferenceAnimations() {
        isPaused = true
        isPaused = false
    }
}
