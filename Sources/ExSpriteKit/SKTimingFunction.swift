//
//  SKAction+ScreenShake.swift
//  extensions-kit
//
//  Created by Astemir Eleev on 20/05/2018.
//  Copyright © 2018 Astemir Eleev. All rights reserved.
//

import Foundation

/// Use this static methods of this class as a complimentary functionality for SKActionTimingFunction which is a typealias for (Float) -> Float closure.
/// SKAction class has a property called 'timingFunction' which is of type SKActionTimingFunction and can be replaced by any custom closure that matches the described signature. The following timing function collection can be easily passed as timing function to SKAction class.
public class SKTimingFunction {
    
    public static func linear(_ t: Float) -> Float {
        return t
    }
    
    public static func quadraticEaseIn(_ t: Float) -> Float {
        return t * t
    }
    
    public static func quadraticEaseOut(_ t: Float) -> Float {
        return t * (2.0 - t)
    }
    
    public static func quadraticEaseInOut(_ t: Float) -> Float {
        if t < 0.5 {
            return 2.0 * t * t
        } else {
            let f = t - 1.0
            return 1.0 - 2.0 * f * f
        }
    }
    
    public static func cubicEaseIn(_ t: Float) -> Float {
        return t * t * t
    }
    
    public static func cubicEaseOut(_ t: Float) -> Float {
        let f = t - 1.0
        return 1.0 + f * f * f
    }
    
    public static func cubicEaseInOut(_ t: Float) -> Float {
        if t < 0.5 {
            return 4.0 * t * t * t
        } else {
            let f = t - 1.0
            return 1.0 + 4.0 * f * f * f
        }
    }
    
    public static func quarticEaseIn(_ t: Float) -> Float {
        return t * t * t * t
    }
    
    public static func quarticEaseOut(_ t: Float) -> Float {
        let f = t - 1.0
        return 1.0 - f * f * f * f
    }
    
    public static func quarticEaseInOut(_ t: Float) -> Float {
        if t < 0.5 {
            return 8.0 * t * t * t * t
        } else {
            let f = t - 1.0
            return 1.0 - 8.0 * f * f * f * f
        }
    }
    
    public static func quinticEaseIn(_ t: Float) -> Float {
        return t * t * t * t * t
    }
    
    public static func quinticEaseOut(_ t: Float) -> Float {
        let f = t - 1.0
        return 1.0 + f * f * f * f * f
    }
    
    public static func quinticEaseInOut(_ t: Float) -> Float {
        if t < 0.5 {
            return 16.0 * t * t * t * t * t
        } else {
            let f = t - 1.0
            return 1.0 + 16.0 * f * f * f * f * f
        }
    }
    
    public static func sineEaseIn(_ t: Float) -> Float {
        return sin((t - 1.0) * Float.pi / 2) + 1.0
    }
    
    public static func sineEaseOut(_ t: Float) -> Float {
        return sin(t * Float.pi / 2)
    }
    
    public static func sineEaseInOut(_ t: Float) -> Float {
        return 0.5 * (1.0 - cos(t * Float.pi))
    }
    
    public static func circularEaseIn(_ t: Float) -> Float {
        return 1.0 - sqrt(1.0 - t * t)
    }
    
    public static func circularEaseOut(_ t: Float) -> Float {
        return sqrt((2.0 - t) * t)
    }
    
    public static func circularEaseInOut(_ t: Float) -> Float {
        if t < 0.5 {
            return 0.5 * (1.0 - sqrt(1.0 - 4.0 * t * t))
        } else {
            return 0.5 * sqrt(-4.0 * t * t + 8.0 * t - 3.0) + 0.5
        }
    }
    
    public static func exponentialEaseIn(_ t: Float) -> Float {
        return (t == 0.0) ? t : pow(2.0, 10.0 * (t - 1.0))
    }
    
    public static func exponentialEaseOut(_ t: Float) -> Float {
        return (t == 1.0) ? t : 1.0 - pow(2.0, -10.0 * t)
    }
    
    public static func exponentialEaseInOut(_ t: Float) -> Float {
        if t == 0.0 || t == 1.0 {
            return t
        } else if t < 0.5 {
            return 0.5 * pow(2.0, 20.0 * t - 10.0)
        } else {
            return 1.0 - 0.5 * pow(2.0, -20.0 * t + 10.0)
        }
    }
    
    public static func elasticEaseIn(_ t: Float) -> Float {
        return sin(13.0 * Float.pi/2 * t) * pow(2.0, 10.0 * (t - 1.0))
    }
    
    public static  func elasticEaseOut(_ t: Float) -> Float {
        return sin(-13.0 * Float.pi/2 * (t + 1.0)) * pow(2.0, -10.0 * t) + 1.0
    }
    
    public static func elasticEaseInOut(_ t: Float) -> Float {
        if t < 0.5 {
            return 0.5 * sin(13.0 * Float.pi * t) * pow(2.0, 20.0 * t - 10.0)
        } else {
            return 0.5 * sin(-13.0 * Float.pi * t) * pow(2.0, -20.0 * t + 10.0) + 1.0
        }
    }
    
    public static func backEaseIn(_ t: Float) -> Float {
        let s: Float = 1.70158
        return ((s + 1.0) * t - s) * t * t
    }
    
    public static func backEaseOut(_ t: Float) -> Float {
        let s: Float = 1.70158
        let f = 1.0 - t
        return 1.0 - ((s + 1.0) * f - s) * f * f
    }
    
    public static func backEaseInOut(_ t: Float) -> Float {
        let s: Float = 1.70158
        if t < 0.5 {
            let f = 2.0 * t
            return 0.5 * ((s + 1.0) * f - s) * f * f
        } else {
            let f = 2.0 * (1.0 - t)
            return 1.0 - 0.5 * ((s + 1.0) * f - s) * f * f
        }
    }
    
    public static func extremeBackEaseIn(_ t: Float) -> Float {
        return (t * t - sin(t * Float.pi)) * t
    }
    
    public static func extremeBackEaseOut(_ t: Float) -> Float {
        let f = 1.0 - t
        return 1.0 - (f * f - sin(f * Float.pi)) * f
    }
    
    public static func extremeBackEaseInOut(_ t: Float) -> Float {
        if t < 0.5 {
            let f = 2.0 * t
            return 0.5 * (f * f - sin(f * Float.pi)) * f
        } else {
            let f = 2.0 * (1.0 - t)
            return 1.0 - 0.5 * (f * f - sin(f * Float.pi)) * f
        }
    }
    
    public static func bounceEaseIn(_ t: Float) -> Float {
        return 1.0 - bounceEaseOut(1.0 - t)
    }
    
    public static func bounceEaseOut(_ t: Float) -> Float {
        if t < 1.0 / 2.75 {
            return 7.5625 * t * t
        } else if t < 2.0 / 2.75 {
            let f = t - 1.5 / 2.75
            return 7.5625 * f * f + 0.75
        } else if t < 2.5 / 2.75 {
            let f = t - 2.25 / 2.75
            return 7.5625 * f * f + 0.9375
        } else {
            let f = t - 2.625 / 2.75
            return 7.5625 * f * f + 0.984375
        }
    }
    
    public static func bounceEaseInOut(_ t: Float) -> Float {
        if t < 0.5 {
            return 0.5 * bounceEaseIn(t * 2.0)
        } else {
            return 0.5 * bounceEaseOut(t * 2.0 - 1.0) + 0.5
        }
    }
    
    public static func smoothstep(_ t: Float) -> Float {
        return t * t * (3 - 2 * t)
    }
    
    public static func shakeFunction(_ oscillations: Float) -> (Float) -> Float {
        return {t in -pow(2.0, -10.0 * t) * sin(t * Float.pi * oscillations * 2.0) + 1.0}
    }

}
