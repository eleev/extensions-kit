# extensions-kit [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

**Last Update: 02/August/2018.**

# About

🎉 Collection of Swift iOS and macOS related extensions for various use cases. Basically it's a collection of extensions that I started implementing for my own needs. There are **`45`** different extensions. Feel free to contribute something new and amazing. 

# Categories
List of categories for convenient navigation. The `numbers` represent total number of extensions for a given category.

- [AppKit - 1](#appkit)
- [AVFoundation - 1](#avfoundation) 
- [Core Graphics - 6](#core-graphics)
- [Foundation - 19](#foundation)
- [UIKit - 9](#uikit)
- [SpriteKit - 6](#spritekit)
- [SceneKit - 1](#scenekit)
- [Grapnd Central Dispatch - 1](#grapnd-central-dispatch)
- [WebKit - 1](#webkit)
- [PhotoKit - 1](#photokit)


# List of Extensions
All the extensions are split into separete `groups` each of which represents a separete `SDK framework`. 

## AppKit

## NSBezierPath
- [NSBezierPath+cgPath](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/AppKit/NSBezierPath%2BcgPath.swift)

## AVFoundation
- [AVCaptureDevice+ToggleFlash](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/AVFoundation/AVCaptureDevice%2BToggleFlash.swift)

## Core Graphics

### CGPoint
- [CGPoint+Operators](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/CoreGraphics/CGPoint/CGPoint%2BOperators.swift)
- [CGPoint+Utils](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/CoreGraphics/CGPoint/CGPoint%2BUtils.swift)

### CGRect
- [CGRect+Scale](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/CoreGraphics/CGRect/CGRect%2BScale.swift)
- [CGRect+Corners](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/CoreGraphics/CGRect/CGRect%2BCorners.swift)
- [CGRect+Mid](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/CoreGraphics/CGRect/CGRect%2BMid.swift)
- [CGRect+AspectFit](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/CoreGraphics/CGRect/CGRect%2BAspectFit.swift)

## Foundation

### Array
- [Array+Filtering](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Array/Array%2BFiltering.swift)

### Bool
- [Bool+Int](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Bool/Bool%2BInt.swift)
- [Bool+Random](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Bool/Bool%2BRandom.swift)

### ClosedRange
- [ClosedRange+Random](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/ClosedRange/ClosedRange%2BRandom.swift)   

### Collection 
- [Collection+ParallelIteration](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Collection/Collection%2BParallelIteration.swift)
- [Collection+RandomItem](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Collection/Collection%2BRandomItem.swift)
- [Collection+Sum&Average](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Collection/Collection%2BSum%26Average.swift)

### Dictionary
- [Dictionary+GetOrAddValue](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Dictionary/Dictionary%2BGetOrAddValue.swift)
- [Dictionary+JSON](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Dictionary/Dictionary%2BJSON.swift)

### Int
- [Int+Clamp](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Int/Int%2BClamp.swift)
- [Int+Digits](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Int/Int%2BDigits.swift)
- [Int+EvenOdd](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Int/Int%2BEvenOdd.swift)
- [Int+Factorial](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Int/Int%2BFactorial.swift)
- [Int+Power](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Int/Int%2BPower.swift)
- [Int+Random](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Int/Int%2BRandom.swift)
- [Int+Roman](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Int/Int%2BRoman.swift)

### MutableCollection 
- [MutableCollection+Shuffle](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/MutableCollection/MutableCollection%2BShuffle.swift)

### Sequence  
- [Sequence+Shuffle](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Foundation/Sequence/Sequence%2BShuffle.swift)

### String
- [String+Digits](https://github.com/jVirus/extensions-kit/blob/master/ios-extensions/Extensions/Foundation/String/String%2BDigits.swift)

## UIKit

### UICollectionView
- [UICollectionView+CustomCellRegistration](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UICollectionView/UICollectionView%2BCustomCellRegistration.swift)

### UIImage
- [UIImage+ImageFromUIView](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UIImage/UIImage%2BImageFromUIView.swift)
- [UIImage+LandscapeCameraOrientationFix](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UIImage/UIImage%2BLandscapeCameraOrientationFix.swift)
- [UIImage+RawOrientation](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UIImage/UIImage%2BRawOrientation.swift)
- [UIImage+Resize](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UIImage/UIImage%2BResize.swift)
- [UIImage+SolidColor](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UIImage/UIImage%2BSolidColor.swift)

### UIImageView
- [UIImageView+DownloadFromURL](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UIImageView/UIImageView%2BDownloadFromURL.swift)
- [UIImageView+Masking](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UIImageView/UIImageView%2BMasking.swift)

### UIViewController
- [UIViewController+ChildViewControllers](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/UIKit/UIViewController/UIViewController%2BChildViewControllers.swift)

## SpriteKit
- [SKTimingFunction](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/SpriteKit/SKTimingFunction.swift)

### SKEmitterNode
- [SKEmitterNode+AdvanceSimulation](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/SpriteKit/SKEmitterNode/SKEmitterNode%2BAdvanceSimulation.swift)

### SKSpriteNode
- [SKSpriteNode+GIF](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/SpriteKit/SKSpriteNode/SKSpriteNode%2BGIF.swift)

### SKScene
- [SKScene+SerialSpriteLoading](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/SpriteKit/SKScene/SKScene%2BSerialSpriteLoading.swift)

### SKTexture
- [SKTexture+LinearGradient](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/SpriteKit/SKTexture/SKTexture%2BLinearGradient.swift)

### SKTextureAtlas
- [SKTextureAtlas+FramesLoader](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/SpriteKit/SKTextureAtlas/SKTextureAtlas%2BFramesLoader.swift)

## SceneKit
- [SCNVector3+Operators](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/SceneKit/SCNVector3%2BOperators.swift)

## Grapnd Central Dispatch
- [DispatchQueue+DispatchOnce](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/Grand%20Central%20Dispatch/DispatchQueue%2BDispatchOnce.swift)

## WebKit

### WKWebView
- [WKWebView+Load](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/WebKit/WKWebView/WKWebView%2BLoad.swift)

## PhotoKit

### PHAsset
- [PHAsset+URL](https://github.com/jVirus/ios-extensions/blob/master/ios-extensions/Extensions/PhotoKit/PHAsset/PHAsset%2BURL.swift)

# Contributing 
- There is just one main rule for contributors - **please include your extensions in separete files**. It's important since such extension can be more easily referenced and reused.
- The other `soft` rule is - please include `unit tests` with your extensions. 

# Author 
[Astemir Eleev](https://github.com/jVirus)

# Licence
The project is available under [MIT licence](https://github.com/jVirus/ios-extensions/blob/master/LICENSE)
