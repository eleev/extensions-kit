# extensions-kit [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

[![Platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS-yellow.svg)]()
[![Language](https://img.shields.io/badge/language-Swift-orange.svg)]()
[![Coverage](https://img.shields.io/badge/coverage-32%2C65%25-red.svg)]()
[![CocoaPod](https://img.shields.io/badge/pod-1.3.0-lightblue.svg)]()
[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()

**Last Update: 14/September/2018.**

![](logo-extensions_kit.png)

# ✍️ About

🎉 Collection of Swift extensions for various use cases. The kit contains **`70`** different extensions. Feel free to contribute something new and amazing. 

# 🏗 Installation
## CocoaPods
`extensions-kit` is availabe via `CocoaPods`

```
pod 'extensions-kit', '~> 1.3.0' 
```
## Manual
You can always use `copy-paste` the sources method 😄. Or you can compile the framework and include it with your project.

# 🍱 Categories
List of categories for convenient navigation. The `numbers` represent total number of extensions for a given category.

- [AppKit - 1](#appkit)
- [AVFoundation - 1](#avfoundation) 
- [Core Graphics - 7](#core-graphics)
- [Core Image - 1](#core-image)
- [Foundation - 36](#foundation)
- [UIKit - 14](#uikit)
- [SpriteKit - 6](#spritekit)
- [SceneKit - 1](#scenekit)
- [Grand Central Dispatch - 1](#grapnd-central-dispatch)
- [WebKit - 1](#webkit)
- [PhotoKit - 1](#photokit)


# 📚 List of Extensions
All the extensions are split into separete `groups` each of which represents a separete `SDK framework`. 

## AppKit

## NSBezierPath
- [NSBezierPath+cgPath](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/AppKit/NSBezierPath%2BcgPath.swift) - adds missing `cgPath` property that converts `self` (port of similar functionality from `iOS`)

## AVFoundation
- [AVCaptureDevice+ToggleFlash](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/AVFoundation/AVCaptureDevice%2BToggleFlash.swift) - adds support for flashlight capabilities and management

## Core Graphics

### CGPoint
- [CGPoint+Operators](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGPoint/CGPoint%2BOperators.swift) - various mathematical operators such as `+`, `-`, `*`, `/`, `lerp` etc.
- [CGPoint+Utils](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGPoint/CGPoint%2BUtils.swift) - missing mathematical utilities such as `normalized`, `lenght`, `distanceTo` and `angle`

### CGRect
- [CGRect+Scale](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BScale.swift) - scales `self` to the specified size
- [CGRect+Corners](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BCorners.swift) - adds properties for `topLeft`, `topRight`, `bottomLeft` and `bottomRight` points
- [CGRect+Mid](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BMid.swift) - adds property for `mid` point of `self`
- [CGRect+AspectFit](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BAspectFit.swift) - adds `aspectFit(inRect: CGRect) -> CGRect` method that scales `self` to fit the specified `CGRect`

### CGFloat
- [CGFloat+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGFloat/CGFloat%2BRounded.swift) - rounds `self` to the specified decimal places

## CoreImage

### New Filters
- [HighlightFilter](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreImage/Filters/HighlightFilter.swift) - filter is originally designed for highlighting 3D objects but can be used to add this effect to images and sprites

## Foundation

### Array
- [Array+Filtering](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BFiltering.swift) - contains a number of methods for filtering in a `functional-style`, has `skip`, `all` and `any` filters
- [Array+Contains](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BContains.swift) - checks if self contains the specified elements
- [Array+Difference](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BDifference.swift) - computes differences between self and the input arrays
- [Array+Intersection](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BIntersection.swift) - computes intersection of self and the input values
- [Array+Union](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BUnion.swift) - unions self and the input arrays

### Bool
- [Bool+Int](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Bool/Bool%2BInt.swift) - adds a property that returns `Int` representation of `self`
- [Bool+Random](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Bool/Bool%2BRandom.swift) - adds a random property for `self`

### ClosedRange
- [ClosedRange+Random](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/ClosedRange/ClosedRange%2BRandom.swift) - adds a property that generates a random `Int` with respect to `self`

### Collection 
- [Collection+ParallelIteration](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BParallelIteration.swift) - adds `parallelForEach` method 
- [Collection+RandomItem](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BRandomItem.swift) - adds a property that returns a random element from `self`
- [Collection+Sum&Average](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BSum%26Average.swift) - adds two properties for `sum` and `average` with the corresponding functionality

### Dictionary
- [Dictionary+GetOrAddValue](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BGetOrAddValue.swift) - parses `self` as `JSON` to `Data` or `String`
- [Dictionary+JSON](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BJSON.swift) - checks for a value for a given key or creates a new key/value pair if none was found
- [Dictionary+ConvenienceWrappers](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BConvenienceWrappers.swift) - adds wrappers around common operations such as `has(key: )->Bool` and `each(: (Key, Value)->())`
- [Dictionary+Difference](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BDifference.swift) - computes differences between self and the input dictionaries 
- [Dictionary+Intersection](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BIntersection.swift) - computes intersection of self and the input Dictionaries
- [Dictionary+Map](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BMap.swift) - custom mapping function
- [Dictionary+Union](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BUnion.swift) - unions self and the input dictionaries

### Double
- [Double+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Double/Double%2BRounded.swift) - rounds `self` to decimal places value
- [Double+CurrencyShorcuts](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Double/Double%2BCurrencyShortcuts.swift) - adds several commonly used currency shortcuts as properties

### Float 
- [Float+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Float/Float%2BRounded.swift) - rounds `self` to decimal places value

### Int
- [Int+Clamp](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BClamp.swift) - clamps `self` into a range that can be described using `ClosedRange` or two separate properties
- [Int+Digits](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BDigits.swift) - adds `digitCount` property that contains the number of digits for `self`
- [Int+EvenOdd](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BEvenOdd.swift) - checks whether `self` is even or if it's odd
- [Int+Factorial](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BFactorial.swift) - computes *factorial* of `self`
- [Int+Power](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BPower.swift) - operator that performs `exponentiation` matematical operation, where left number is the *base* and the right one is the *exponent*
- [Int+Random](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BRandom.swift) - generates pseudo-random number in a range that can be specified as `ClosedRange` or two separate `Int` properties
- [Int+Roman](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BRoman.swift) - converts `self` into *Roman* number (as `String`)

### OptionSet
- [OptionSet+Operations](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/OptionSet/OptionSet%2BOperations.swift) - adds support for in-place `insert` and `remove` operations

### MutableCollection 
- [MutableCollection+Shuffle](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/MutableCollection/MutableCollection%2BShuffle.swift) - in-place shuffling of `self`

### Sequence  
- [Sequence+Shuffle](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Sequence/Sequence%2BShuffle.swift) - shuffles the elements of `self`

### String
- [String+Digits](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BDigits.swift) - combines decimal digits into a single `String` property
- [String+FormattedDate](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BFormattedDate.swift) - creates a `Date` instance from `self` based in the specified format
- [String+IndexOf](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BIndexOf.swift) - finds the first occurence for a given `String`
- [String+Base64](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BBase64.swift) - encodes/decodes `self` to `Base64` encoding
- [String+Validation](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BValidation.swift) - determines if `self` is *alphanumeric* `String`

## UIKit

### NSLayoutConstraint
- [NSLayoutConstraint+Activation](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/NSLayoutConstraint%2BActivation/NSLayoutConstraint%2BActivation.swift) - adds convenience methods for *setting* and *activating* layout priorities

### UIView
- [UIView+Corners](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIView/UIView%2BCorners.swift) - convenience extension for setting and getting round corners
- [UIView+HuggingPriority](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIView/UIView%2BHuggingPriority.swift) - convenience wrappers that simplify inerfaces for *setContentHuggingPriority* and *setContentCompressionResistancePriority* methods

### UIColor
- [UIColor+ColorComponents](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIColor/UIColor%2BColorComponents.swift) - adds support for missing color components properties such as `rgba`, `hsba` and `grayscale`

### UICollectionView
- [UICollectionView+CustomCellRegistration](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UICollectionView/UICollectionView%2BCustomCellRegistration.swift) - registers custom `UICollectionViewCell` for a `UICollectionView` instance. `UICollectionViewCell` needs to be located in current Bundle

### UIImage
- [UIImage+ImageFromUIView](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BImageFromUIView.swift) - renders `UIView` to `UIImage`
- [UIImage+LandscapeCameraOrientationFix](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BLandscapeCameraOrientationFix.swift) - fixes image orientation for cases when the image was captured using `AVFoundation` in *landscape interface orientation*
- [UIImage+RawOrientation](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BRawOrientation.swift) - raw image orientation (from `UIImageOrientation` to `Int32`) 
- [UIImage+Resize](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BResize.swift) - class-level extension that allows to resize input image based on expected image *width* or/and *height*
- [UIImage+SolidColor](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BSolidColor.swift) - create a `UIImage` from the *color data* and *size*
- [UIImage+Inverted](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BInverted.swift) - adds a property that returns an *inverted* copy of `self`

### UIImageView
- [UIImageView+DownloadFromURL](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImageView/UIImageView%2BDownloadFromURL.swift) - adds a convenience method for downloading and parsing `UIImage` with the specified `URL`
- [UIImageView+Masking](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImageView/UIImageView%2BMasking.swift) - masks a given `UIImage` with the target image size

### UIViewController
- [UIViewController+ChildViewControllers](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIViewController/UIViewController%2BChildViewControllers.swift) - addds convenience methods for `adding` and `removing` child view controllers

## SpriteKit
- [SKTimingFunction](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTimingFunction.swift) - adds **36(!)** different timing functions 

### SKEmitterNode
- [SKEmitterNode+AdvanceSimulation](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKEmitterNode/SKEmitterNode%2BAdvanceSimulation.swift) - safely advance the particle simulation for a given `TimeInterval`

### SKSpriteNode
- [SKSpriteNode+GIF](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKSpriteNode/SKSpriteNode%2BGIF.swift) - adds support for uploading and playing `GIFs` from local files

### SKScene
- [SKScene+SerialSpriteLoading](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKScene/SKScene%2BSerialSpriteLoading.swift) - uploads a set of scene graph nodes with a specific pattern, useful when a scene contains a lot of nodes, but just a specific subset needs to be processed or accessed

### SKTexture
- [SKTexture+LinearGradient](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTexture/SKTexture%2BLinearGradient.swift) - adds a convenience initializer that generates a `gradient texture` for the specified *size*, *start* and *end* colors

### SKTextureAtlas
- [SKTextureAtlas+FramesLoader](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTextureAtlas/SKTextureAtlas%2BFramesLoader.swift) - uploads an animation sequence from a texture atlas and returns an array of textures that can be futher used

## SceneKit
- [SCNVector3+Operators](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SceneKit/SCNVector3%2BOperators.swift) - adds support for various mathematical operators for `SCNVector3` type

## Grand Central Dispatch
- [DispatchQueue+DispatchOnce](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Grand%20Central%20Dispatch/DispatchQueue%2BDispatchOnce.swift) - adds support for `class` method that executes block of code only once a.k.a. `DispatchOnce` before `Swift 3.0`

## WebKit

### WKWebView
- [WKWebView+Load](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/WebKit/WKWebView/WKWebView%2BLoad.swift) - adds support for navigating to the requested `URL` using `String`

## PhotoKit

### PHAsset
- [PHAsset+URL](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/PhotoKit/PHAsset/PHAsset%2BURL.swift) - provides possibility to get `URL` for image and video media types

# 🙋‍♀️🙋‍♂️Contributing 
- There is just one main rule for contributors - **please include your extensions in separete files**. It's important since such extension can be more easily referenced and reused.
- The other `soft` rule is - please include `unit tests` with your extensions. 

# 👨‍💻 Author 
[Astemir Eleev](https://github.com/jVirus)

# 🔖 Licence
The project is available under [MIT licence](https://github.com/jVirus/extensions-kit/blob/master/LICENSE)
