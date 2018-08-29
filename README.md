# extensions-kit [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

[![Platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS-yellow.svg)]()
[![Language](https://img.shields.io/badge/language-Swift-orange.svg)]()
[![Coverage](https://img.shields.io/badge/coverage-32%2C65%25-red.svg)]()
[![CocoaPod](https://img.shields.io/badge/pod-1.1.1-lightblue.svg)]()
[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()


**Last Update: 29/August/2018.**

# ✍️ About

🎉 Collection of Swift extensions for various use cases. The kit contains **`56`** different extensions. Feel free to contribute something new and amazing. 

# 🏗 Installation
## CocoaPods
`extensions-kit` is availabe via `CocoaPods`

```swift
pod 'extensions-kit', '~> 1.1.1' 
```
## Manual
You can always use `copy-paste` the sources method 😄. Or you can compile the framework and include it with your project.

# 🍱 Categories
List of categories for convenient navigation. The `numbers` represent total number of extensions for a given category.

- [AppKit - 1](#appkit)
- [AVFoundation - 1](#avfoundation) 
- [Core Graphics - 7](#core-graphics)
- [Foundation - 27](#foundation)
- [UIKit - 10](#uikit)
- [SpriteKit - 6](#spritekit)
- [SceneKit - 1](#scenekit)
- [Grapnd Central Dispatch - 1](#grapnd-central-dispatch)
- [WebKit - 1](#webkit)
- [PhotoKit - 1](#photokit)


# 📚 List of Extensions
All the extensions are split into separete `groups` each of which represents a separete `SDK framework`. 

## AppKit

## NSBezierPath
- [NSBezierPath+cgPath](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/AppKit/NSBezierPath%2BcgPath.swift)

## AVFoundation
- [AVCaptureDevice+ToggleFlash](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/AVFoundation/AVCaptureDevice%2BToggleFlash.swift)

## Core Graphics

### CGPoint
- [CGPoint+Operators](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGPoint/CGPoint%2BOperators.swift)
- [CGPoint+Utils](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGPoint/CGPoint%2BUtils.swift)

### CGRect
- [CGRect+Scale](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BScale.swift)
- [CGRect+Corners](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BCorners.swift)
- [CGRect+Mid](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BMid.swift)
- [CGRect+AspectFit](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BAspectFit.swift)

### CGFloat
- [CGFloat+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGFloat/CGFloat%2BRounded.swift)

## Foundation

### Array
- [Array+Filtering](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BFiltering.swift)

### Bool
- [Bool+Int](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Bool/Bool%2BInt.swift)
- [Bool+Random](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Bool/Bool%2BRandom.swift)

### ClosedRange
- [ClosedRange+Random](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/ClosedRange/ClosedRange%2BRandom.swift)   

### Collection 
- [Collection+ParallelIteration](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BParallelIteration.swift)
- [Collection+RandomItem](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BRandomItem.swift)
- [Collection+Sum&Average](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BSum%26Average.swift)

### Dictionary
- [Dictionary+GetOrAddValue](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BGetOrAddValue.swift)
- [Dictionary+JSON](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BJSON.swift)

### Double
- [Double+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Double/Double%2BRounded.swift)
- [Double+CurrencyShorcuts](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Double/Double%2BCurrencyShortcuts.swift)

### Float 
- [Float+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Float/Float%2BRounded.swift)

### Int
- [Int+Clamp](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BClamp.swift)
- [Int+Digits](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BDigits.swift)
- [Int+EvenOdd](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BEvenOdd.swift)
- [Int+Factorial](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BFactorial.swift)
- [Int+Power](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BPower.swift)
- [Int+Random](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BRandom.swift)
- [Int+Roman](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BRoman.swift)

### OptionSet
- [OptionSet+Operations](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/OptionSet/OptionSet%2BOperations.swift)

### MutableCollection 
- [MutableCollection+Shuffle](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/MutableCollection/MutableCollection%2BShuffle.swift)

### Sequence  
- [Sequence+Shuffle](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Sequence/Sequence%2BShuffle.swift)

### String
- [String+Digits](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BDigits.swift)
- [String+FormattedDate](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BFormattedDate.swift)
- [String+IndexOf](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BIndexOf.swift)
- [String+Base64](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BBase64.swift)
- [String+Validation](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BValidation.swift)

## UIKit

### UIColor
- [UIColor+ColorComponents](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIColor/UIColor%2BColorComponents.swift)

### UICollectionView
- [UICollectionView+CustomCellRegistration](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UICollectionView/UICollectionView%2BCustomCellRegistration.swift)

### UIImage
- [UIImage+ImageFromUIView](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BImageFromUIView.swift)
- [UIImage+LandscapeCameraOrientationFix](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BLandscapeCameraOrientationFix.swift)
- [UIImage+RawOrientation](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BRawOrientation.swift)
- [UIImage+Resize](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BResize.swift)
- [UIImage+SolidColor](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BSolidColor.swift)

### UIImageView
- [UIImageView+DownloadFromURL](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImageView/UIImageView%2BDownloadFromURL.swift)
- [UIImageView+Masking](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImageView/UIImageView%2BMasking.swift)

### UIViewController
- [UIViewController+ChildViewControllers](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIViewController/UIViewController%2BChildViewControllers.swift)

## SpriteKit
- [SKTimingFunction](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTimingFunction.swift)

### SKEmitterNode
- [SKEmitterNode+AdvanceSimulation](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKEmitterNode/SKEmitterNode%2BAdvanceSimulation.swift)

### SKSpriteNode
- [SKSpriteNode+GIF](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKSpriteNode/SKSpriteNode%2BGIF.swift)

### SKScene
- [SKScene+SerialSpriteLoading](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKScene/SKScene%2BSerialSpriteLoading.swift)

### SKTexture
- [SKTexture+LinearGradient](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTexture/SKTexture%2BLinearGradient.swift)

### SKTextureAtlas
- [SKTextureAtlas+FramesLoader](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTextureAtlas/SKTextureAtlas%2BFramesLoader.swift)

## SceneKit
- [SCNVector3+Operators](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SceneKit/SCNVector3%2BOperators.swift)

## Grapnd Central Dispatch
- [DispatchQueue+DispatchOnce](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Grand%20Central%20Dispatch/DispatchQueue%2BDispatchOnce.swift)

## WebKit

### WKWebView
- [WKWebView+Load](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/WebKit/WKWebView/WKWebView%2BLoad.swift)

## PhotoKit

### PHAsset
- [PHAsset+URL](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/PhotoKit/PHAsset/PHAsset%2BURL.swift)

# 🙋‍♂️ Contributing 
- There is just one main rule for contributors - **please include your extensions in separete files**. It's important since such extension can be more easily referenced and reused.
- The other `soft` rule is - please include `unit tests` with your extensions. 

# 👨‍💻 Author 
[Astemir Eleev](https://github.com/jVirus)

# 🔖 Licence
The project is available under [MIT licence](https://github.com/jVirus/extensions-kit/blob/master/LICENSE)
