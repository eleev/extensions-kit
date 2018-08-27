//
//  SKEmitterNode+AdvanceSimulation.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 20/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import SpriteKit.SKEmitterNode

extension SKEmitterNode {
    
    /// Safely advance the simulation by checking if the node was previously paused and then advancing the simulation
    ///
    /// - Parameter sec: advance simulation in seconds
    func safeAdvanceSimulationTime(_ sec: TimeInterval) {
        let emitterPaused = self.isPaused
        
        if emitterPaused {
            self.isPaused = false
        }
        advanceSimulationTime(sec)
        
        if emitterPaused {
            self.isPaused = true
        }
    }
}

