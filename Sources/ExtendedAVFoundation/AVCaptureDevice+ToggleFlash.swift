//
//  AVCaptureDevice+ToggleFlash.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 17/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

#if canImport(AVFoundation) && os(iOS)
import AVFoundation

// MARK: - AVCaptureDevice+Flashlight extnesion that adds support for flashlight capabilities and management through a simple method with custom states.
extension AVCaptureDevice {
    
    // MARK: - Enums
    
    /// Is a convinience enum type for Flashlight feature. Incapsulates a number of possible states
    ///
    /// - on: for flashlight is being turned on
    /// - off: for flashlight is being turned off
    /// - unavailable: for cases when current device has no torch capabilities
    /// - undefined: for cases when none of the listed cases takes place
    /// - error: for cases when AVCaptureDevice has no suport for video type
    enum AVFlashlightState {
        case on
        case off
        case unavailable
        case undefined
        case error
    }
    
    /// Convenience enum that provies several levels of flashlight brigtness levels
    ///
    /// - none: 0.0
    /// - min: 0.25
    /// - mid: 0.5
    /// - high: 0.75
    /// - max: 1.0
    enum AVBrightnessLevel: Float {
        case none = 0.0
        case min = 0.25
        case mid = 0.5
        case high = 0.75
        case max = 1.0
    }

    // MARK: - Methods
    
    /// Toggls built in flashlight on and off
    ///
    /// - Returns: AVFlashlightState enum type describing one of the following states:
    @discardableResult static func toggleFlashlight(with brightnessLevel: AVBrightnessLevel = .max) -> AVFlashlightState {
        
        guard let device = AVCaptureDevice.default(for: .video) else { return AVFlashlightState.error }
        if device.hasTorch {
            do {
                try device.lockForConfiguration()
                
                if device.torchMode == .on {
                    device.torchMode = .off
                    return AVFlashlightState.off
                } else {
                    do {
                        try device.setTorchModeOn(level: brightnessLevel.rawValue)
                        return AVFlashlightState.on
                    } catch {
                        debugPrint("Error when attemping to turn on torch -> ", error)
                    }
                }
            } catch {
                debugPrint("Error when attempting to lock for torch configuration -> ", error)
            }
        } else {
            return AVFlashlightState.unavailable
        }
        return AVFlashlightState.undefined
    }
}
#endif
