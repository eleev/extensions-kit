# extensions-kit [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome)

[![Build](https://github.com/jvirus/extensions-kit/workflows/Build/badge.svg)]()
[![Platforms](https://img.shields.io/badge/Platforms-iOS-yellow.svg)]()
[![Language](https://img.shields.io/badge/Language-Swift-orange.svg)]()
[![SPM](https://img.shields.io/badge/SPM-Supported-lightblue.svg)]()
[![Extensions](https://img.shields.io/badge/Extensions-246-red.svg)]()
[![CustomTypes](https://img.shields.io/badge/Types-24-green.svg)]()
[![License](https://img.shields.io/badge/License-MIT-blue.svg)]()

<!-- [![Build Status](https://travis-ci.org/jVirus/extensions-kit.svg?branch=master)](https://travis-ci.org/jVirus/extensions-kit) -->
<!--[![Coverage](https://codecov.io/gh/jVirus/extensions-kit/branch/master/graph/badge.svg)](https://codecov.io/gh/jVirus/extensions-kit) -->

<!-- [![Status](https://img.shields.io/badge/status-Alpha-magenta.svg)]() -->

<!-- The presented platforms are supported yet. This badge will be needed as soon as the platforms are actually supported -->
<!-- [![Platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS-yellow.svg)]() -->

<!-- Coverage was updated manually, which is ok, but CI needs to handle this task -->
<!-- [![Coverage](https://img.shields.io/badge/coverage-23%2C30%25-red.svg)]() -->

<!-- Documentation coverage also needs to be handled by CI -->
<!-- [![Documentation](https://img.shields.io/badge/docs-100%25-magenta.svg)]() -->

**Last Update: 24/February/2020.**

![](logo-extensions_kit.png)

### If you like the project, please give it a star ⭐ It will show the creator your appreciation and help others to discover the repo.

# ✍️ About

📦 Collection of Swift extensions(+ custom types) for various use cases.

# 🏗 Installation
## Swift Package Manager

### Xcode 11+

1. Open `MenuBar` → `File` → `Swift Packages` → `Add Package Dependency...`
2. Paste the package repository url `https://github.com/jVirus/extensions-kit` and hit `Next`.
3. Select the installment rules.

After specifying which version do you want to install, the package will be downloaded and attached to your project. 

### Package.swift
If you already have a `Package.swift` or you are building your own package simply add a new dependency:

```swift
dependencies: [
    .package(url: "https://github.com/jVirus/extensions-kit", from: "1.0.0")
]
```
## Manual
You can always use `copy-paste` the sources method 😄.

# 🍱 Categories
List of categories for convenient navigation. The `numbers` represent total number of extensions for a given category + custom types. Each extension file may contain a number of extensions, grouped by a category.

- [AVFoundation - 1](#avfoundation) 
- [Core Animation - 1](#core-animation)
- [Core Graphics - 16](#core-graphics)
- [Core Image - 6](#core-image)
- [Foundation - 146](#foundation)
- [UIKit - 66](#uikit)
- [os - 1](#os)
- [SpriteKit - 11](#spritekit)
- [SceneKit - 2](#scenekit)
- [PhotoKit - 1](#photokit)
- [concurrency-kit - for `GCD` extensions + even more](https://github.com/jVirus/concurrency-kit)

<!--
# 📚 List of Extensions
All the extensions are split into separete `groups` each of which represents a separete `SDK framework`. 


## AVFoundation
#### [AVCaptureDevice+ToggleFlash](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/AVFoundation/AVCaptureDevice%2BToggleFlash.swift)
Adds support for easy flashlight management:

```swift
AVCaptureDevice.toggleFlashlight(with: .max)
```

## Core Animation

### CAAnimation
#### [CAAnimation+PatternReplicator](/extensions-kit/Extensions/CoreAnimation/CAAnimation/CAAnimation%2BPatternReplicator.swift)
Creates a pattern-based, wavy animation for the specified image, layer size and other properties:

```swift
CAAnimation.patternReplocator(with: UIImage("image"), size: CGSize(width: 600, height: 600), targetLayer: drawerView.layer)
```

## Core Graphics

### CGSize 
#### [CGSize+Operators](/extensions-kit/Extensions/CoreGraphics/CGSize/CGSize%2BOperators.swift)
Various mathematical operators such as `+`, `-`, `*`, `/` for convenience:

```swift
CGSize(width: 10, height: 20) + CGSize(width: 25.4, height: 23.6)
CGSize(width: 10, height: 20) - CGSize(width: 25.4, height: 23.6)
CGSize(width: 10, height: 20) * CGSize(width: 25.4, height: 23.6)
CGSize(width: 10, height: 20) / CGSize(width: 25.4, height: 23.6)
```

### CGPoint
#### [CGPoint+Operators](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGPoint/CGPoint%2BOperators.swift)
Various mathematical operators such as `+`, `-`, `*`, `/`, `lerp` etc.:

```swift
var origin: CGPoint = .zero
let addPoint = origin + CGPoint(x: 10, y: 3)
origin += CGPoint(x: 12, y: 5)
let subPoint = origin - CGPoint(x: 12, y: 5)
        
let interpolatedPoint = CGPoint.lerp(start: pointOne, end: pointTwo, t: 2)
```

#### [CGPoint+Utils](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGPoint/CGPoint%2BUtils.swift) 
Missing mathematical utilities such as `normalized`, `lenght`, `distanceTo` and `angle`:

```swift
let point = CGPoint(x: 3, y: 5)
let _ = point.length()
let _ = point.angle
let _ = point.normalized()
let distanceBetweenTwoPoints = point.distanceTo(anotherPoint)
let _ = point.lengthSquared()
```

### CGRect

#### [CGRect+Scale](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BScale.swift)
Scales `self` to the specified size:

```swift
let rect = CGRect(origin: .zero, size: CGSize(width: 100, height:
            200))
let newSize = rect.scaled(to: targetSize)
```

#### [CGRect+Corners](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BCorners.swift)
Adds properties for `topLeft`, `topRight`, `bottomLeft` and `bottomRight` points:

```swift
let rect = CGRect(origin: .zero, size: CGSize(width: 100, height:
            200))
rect.topLeft
rect.topRight
rect.bottomLeft
rect.bottomRight
````

#### [CGRect+Mid](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BMid.swift)
Adds property for `mid` point of `self`:

```swift
let rect = CGRect(origin: .zero, size: CGSize(width: 100, height:
            200))
rect.mid
```

#### [CGRect+AspectFit](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGRect/CGRect%2BAspectFit.swift)
Adds `aspectFit(inRect: CGRect) -> CGRect` method that scales `self` to fit the specified `CGRect`:

```swift
let rect = CGRect(origin: .zero, size: CGSize(width: 100, height:
            200))
rect.aspectFit(inRect: targetRect)
```

### CGFloat
#### [CGFloat+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreGraphics/CGFloat/CGFloat%2BRounded.swift)
Rounds `self` to the specified decimal places:

```swift
let val: CGFloat = 4.32
let roundedVal = val.rounded(toPlaces: 1) // roundedVal holds `4.3`
```

## CoreImage

### New Filters
#### [HighlightFilter](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreImage/Filters/HighlightFilter.swift) 
Filter is originally designed for highlighting 3D objects but can be used to add this effect to images and sprites.

### CIImage
#### [CIImage+Inverted](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreImage/CIImage%2BInverted.swift)
Inverts the colors of `self`:

```swift
let invertedImage = ciImage.inverted
// invertedImage holds the same image data but with inverted colors
```

#### [CIImage+QRImage](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreImage/CIImage%2BQRImage.swift)
Generates a QR image from the input `text` and with an optional `scale` parameter that specifies the affine transformation for the output `CIImage`:

```swift
let helloWorldQRImage = CIImage.qrImage(from: "Hello World!")
// helloWorldQRImage holds image data that represents QR code for `Hello World!` message
```

#### [CIImage+Tinted](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreImage/CIImage%2BTinted.swift)
Applies the specified `color` as a tint color:

```swift
let redQRImage = qrImage.tinted(by: .red)
// redQRImage holds the same QR image data as before but tinted by red color
```

#### [CIImage+Transparent](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/CoreImage/CIImage%2BTransparent.swift)
A number of extensions that convert the target `CIImage` instance to it's transparent version by applying alpha masking filter:

```swift
let transparentImage = ciImage.transparent
let blackTransparentImage = anotherImage.blackTransparent
```

## Foundation

### NSObjectProtocol
#### [NSObjectProtocol+KVO+KVC](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/NSObjectProtocol/NSObjectProtocol%2BKVO%2BKVC.swift)
Observe and bind observables with ease:

```swift
// Binding is as easy as writing just a single line of code:
viewModel.bind(\.progressSlider, to: progressSlider, at: \.value)

// Observing for changes is thinner than the `Swifts 4.0` updated `KVO`:
viewModel.observe(\.buttonTitle) { [button] in
        button!.setTitle($0, for: .normal)
}
```

### Custom Protocols
#### [Identifiable](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/CustomProtocols/Identifiable.swift)
The protocol supposed to be used with types that need identification, such as UITableViewCell, UITableViewHeaderFooterView, UICollectionReusableView etc.:

```swift
class FeedTableViewCell: UITableViewCell, Identifiable {
       // ... 
       // Implementation details
       // ... 
}

// Somewhere in `UITableViewControllerDelegate`:
let cell = dequeueReusableCell(withIdetifier: cell. reuseIdentifier)
```

#### [Then](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/CustomProtocols/Then.swift)
Protocol for object configuration:

```swift
var imageView = UIImageView().then {
        $0.layer.cornerRadius = 10
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
}
```

### Custom Types
#### [Variable](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/CustomStructures/Variable.swift) 
Lightweight bindable data type that allows to get on update notifications for a given value. Can be used with `MVVM` or any another architectural pattern to replace the need for 3rd party, heavyweight binding framework:

```swift
let stringVariable = Variable("Initial Value")
let newValue = "New Value"
stringVariable.value = newValue

stringVariable.onUpdate = {
        let isEqual = $0 == newValue
        XCTAssert(isEqual)
}
```

#### [Debouncer](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/CustomStructures/Debouncer.swift)
Allows an action to be performed after a delay:

```swift
let debouncer = Debouncer(delay: 2.0)
debouncer.schedule {
        value = "Changed Value"            
}
// After 2.0 seconds the value will be changed to "Changed Value"
```

#### [ObservableArray](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/CustomTypes/ObservableArray.swift)
Syncronous, thread-safe observable array type:

```swift
let array: ObservableArray = [1,2,3,4,5]
array += 6
array += [7,8]

array.allChanges = { change in
        // Both changes will, for addition of `6` and `[7,8]` will be reflected in `change` property and the appropriate callbacks will be made
}

array.removeFirst()
array.removeLast()
array.remove(at: 4)
```

### Custom TextOutputStream
#### [FileOutputStream](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Custom%20TextOutputStream/FileOutputStream.swift)
Prints the output stream to the specified file for the given `URL` and `encoding`:

```swift
let url = URL(fileURLWithPath: "/somePath/subpath/file.rtf")
let fileHandle = try FileHandle(forWritingTo: url)
var textOutputStream = TextOutputStream(fileHandle)

print("\(outputString)", &textOutputStream)
// The print statement will write the output stream to the specified FileHandle at the specified URL. This stream mimics Java's SDK File Output Stream. 
```

#### [](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Custom%20TextOutputStream/UnicodeOutputStream.swift)
 Prints all the `Unicode` characters with the following scheme:

```swift
var unicodeOutputStream = UnicodeOutputStream()
print("👨‍👩‍👧‍👧", to: &unicodeOutputStream)

// Will print all the unicode indices + characters + names
```

### Functions 
#### [FunctionalComposition](/extensions-kit/Extensions/Foundation/Functions/FunctionalComposition.swift)
Is a number of functions that implement `Functional Composition` concept which allows to combine multiple functions and chain them together, in order to transform data. Consider the following construction: (`doubleNumbers` ->> `squareNumbers` ->> `convertToStringArray`)(array) which returns a processed array by linearly composing the functions (rather that nesting the function calls). Also the extension includes the `reversed` operator that composes functions in reversed order:

```swift
func double<T: Numeric>(array: [T]) -> [T] {
        return array.map { $0 * 2 }
}
        
func square<T: Numeric>(array: [T]) -> [T] {
        return array.map { $0 * $0 }
}
        
func toStringArray<T: Numeric>(array: [T]) -> [String] {
        return array.map { "\($0)" }
}

let data = [1,2,3,4,5]
let newData = (double ->> square ->> toStringArray)(data)        
// newData now equals to ["4", "16", "36", "64", "100"]
```

### Data Structures
#### [BuilderProtocol](/extensions-kit/Extensions/Foundation/DataStructures/Builder/BuilderProtocol.swift)
Allows `AnyObject` to be extended with chainable initialization methods by using Keypath feature. Please note that the extension works only since `Swift 4.0`:

```swift
// 1. Add conformance to BuilderProtocol
extension Song: BuilderProtocol { /* empty implementation */ }

// 2. Then you can use Key-Path builder approach:
let song = Song()
        .init(\.author,         with: author)
        .init(\.name,           with: name)
        .init(\.genre,          with: genre)
        .init(\.duration,       with: duration)
        .init(\.releaseDate,    with: releaseDate)
```

#### [Lens](/extensions-kit/Extensions/Foundation/DataStructures/FunctionalLenses/Lens.swift)
`Lens` is an implementation of `Functional Lenses` concept that allows to safely modify immutable `structs` and provides fundamental tools to work with complex data structures (see `UnitTests`):

```swift
extension Actor {
    struct Lenses {
        static let name = Lens<Actor, String>(
            get: {$0.name},
            set: {(me, value) in Actor(name: value, surname: me.surname) }
        )
        static let surname = Lens<Actor, String>(
            get: {$0.surname},
            set: {(me, value) in Actor(name: me.name, surname: value) }
        )
    }
}

extension Movie {
    struct Lenses {
        static let mainActor = Lens<Movie, Actor?>(get: { movie in
            let actor: Actor? = movie.actors.first
            return actor
        }, set: { me, actor -> Movie in
            guard let actor = actor else { return me }
            
            return Movie(name: me.name, year: me.year, actors: [actor] + me.actors)
        })
    }
}
```

#### [ObjectPool](/extensions-kit/Extensions/Foundation/DataStructures/ObjectPool/ObjectPool.swift) 
Thread-safe implementation of `ObjectPool` design pattern:

```swift
let objectPool = ObjectPool(objects: [resource, anotherResource, thirdResource])
let reusedResource = objectPool.dequeue()
objectPool.enqueue(object: reusedResource)
objectPool.eraseAll()
```

#### [Observer](/extensions-kit/Extensions/Foundation/DataStructures/Observer/) 
Thread-safe implementation of `Observer` design pattern (don't confuse with NotiifcationCenter - it's an implementation of `Publish-Subscribe` pattern):

```swift
let observerOne = ObserverOne()
var observerTwo: ObserverTwo? = ObserverTwo()
let observerThree = ObserverThree()

let subject = Subject()
subject += [observerOne, observerTwo!, observerThree]

subject ~> EmailNotification(message: "Hello Observers, this messag was sent from the Subject!")

// Will produce the following output:
// 
// Observer One:  data: Optional("Hello Observers, this messag was sent from the Subject!")
// Observer Two:  data: Optional("Hello Observers, this messag was sent from the Subject!")
// Observer Three:  data: Optional("Hello Observers, this messag was sent from the Subject!")
```

#### [MulticastDelegation](/extensions-kit//Extensions/Foundation/DataStructures/MulticastDelegation/MulticastDelegation.swift)
Non thread-safe implementation of `MulticastDelegation` design pattern:

```swift
// Create the view controllers that will be delegates
let containerViewController = ContainerViewController()
let profileViewController = ProfileViewController()

let profileModel = ProfileModel()

// Attach the delegates
profileModel.delegates.add(delegate: containerViewController)
profileModel.delegates.add(delegate: profileViewController)

// Change the model
profileModel.name = "John"

// After changing `name` property we got the following in console:
// ContainerViewControllers:  didUpdate(name:)  value:  John
// ProfileViewController:  didUpdate(name:)  value:  John

// Assume that we needed to remove one of the delegates:
profileModel.delegates.remove(delegate: profileViewController)

// And again update the model:
profileModel.city = "New York"
// This time the console outputs is the following:
// ContainerViewControllers:  didUpdate(city:)  value:  New York

// We again attach ProfileViewController
profileModel.delegates.add(delegate: profileViewController)

// Custom closure that is called outside of the model layer, for cases when something custom is required without the need to touch the original code-base. For instance we may implement this function in our view-model layer when using MVVM architecture
profileModel.delegates.update { modelDelegate in
    modelDelegate.didSave()
}
```

#### [Stack](/extensions-kit//Extensions/Foundation/DataStructures/Stack/Stack.swift) 
Is an implementation of `Stack` data structure:

```swift
var stack: Stack = [1,2,3,4,5,6,7,8,1]
let lastElement = stack.pop()
stack.push(element: 10)
```

#### [Queue](/extensions-kit//Extensions/Foundation/DataStructures/Queue/Queue.swift) 
Is an implementation of `Queue` data structure:

```swift
var queue: Queue = [1,2,3,4,5,6,7,8,1]
queue.enqueue(element: 9)
let dequeuedElement = queue.dequeue()
```

#### [ProrityQueue](/extensions-kit/Extensions/Foundation/DataStructures/PriorityQueue/PriorityQueue.swift) 
Is an implementation of `Prority Queue` data structure based on `Heap` data structure:

```swift
var queue = PriorityQueue<Int>(elements: [2, 1, 4, 3, 5], order: >)
queue.enqueue(9)
```

#### [Dequeue](/extensions-kit//Extensions/Foundation/DataStructures/Dequeue/Dequeue.swift) 
Is an implementation of `Dequeue` data structure:

```swift
var dequeue = Dequeue([1,2,34,5,6,7])
let back = dequeue.dequeueBack()
let front = dequeue.dequeueFront()

dequeue.enqueue(front: 99)
dequeue.enqueue(back: 99)
```

#### [LinkedList](/extensions-kit//Extensions/Foundation/DataStructures/LinkedList/LinkedList.swift)
Is an implementation of `Linked List` data structure:

```swift
var list: LinkedList = [1,2,4,5]
list.pop()

var newList = LinkedList<Int>(sequence: list)
newList.pop()
```

#### [DoublyLinkedList](/extensions-kit//Extensions/Foundation/DataStructures/DoublyLinkedList/DoublyLinkedList.swift) 
Is an implementation of `Doubly Linked List` data structure:

```swift
var list: DoublyLinkedList = [1,2,4,5,6,7]
list.head
list.tail

list.removeHead()
list.removeTail()

list.push(newHead: 99)
list.push(newTail: 101)
```

#### [Heap](/extensions-kit//Extensions/Foundation/DataStructures/Heap/Heap.swift) 
Is an implementation of `Heap` data structure:

```swift
var maxHeap = Heap<Int>(order: >)
maxHeap.insert(node: 1)
maxHeap.insert(node: 5)
maxHeap.insert(node: 2)
maxHeap.insert(node: 7)
maxHeap.insert(node: 9)

maxHeap.index(of: 3)
let sortedHeapmaxHeap.sorted()
```

### Extensions

### Array
#### [Array+Filtering](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BFiltering.swift) 
Contains a number of methods for filtering in a `functional-style`, has `skip`, `all` and `any` filters

```swift
let result = [1,2,3,4,5,6,7,8,9,10].skip(5)
// result array contains all the elements except the first 5 e.g. [6,7,8,9,10]

let result = [1,2,3,4,5,6,7,8,9,10].all { $0 < 20 }
// result will be true since all the elements are less than 20

let result = [1,2,3,4,5,6,7,8,9,10].any { $0 < 5 }
// result will be true since there are a number of elements that are less than 5
```

#### [Array+Contains](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BContains.swift) 
Checks if self contains the specified elements

```swift
let result = [1,2,4,5,6,7,8,9,10].contains(elements: 1,2,4,5)
// result will be true since the target array contains all the specified elements

let result = [1,2,4,5,6,7,8,9,10].contains(elements: 9,10,11,12)
// result will be false since the target array does not contain 11 and 12
```

#### [Array+Difference](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BDifference.swift) 
Computes differences between self and the input arrays

```swift
let testA = [1,2,3,4,5]
let testB = [4,5,7,8,9]

let result = testA.difference(elements: testB)
// result will be [1,2,3]

let result = testB.difference(elements: testA)
// result will be [7,8,9]
```

#### [Array+Intersection](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BIntersection.swift) 
Computes intersection of self and the input values

```swift
let testA = [1,2,3,4,5]
let testB = [4,5,6,7]

let result = testA.intersection(values: testB)
// result will be [4,5]
```

#### [Array+Union](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Array/Array%2BUnion.swift) 
Unions self and the input arrays

```swift
let result = [1,2,4,5,6,7,8].union(value: [8,9,10])
// result will be [1, 2, 4, 5, 6, 7, 8, 9, 10]
```

#### [Array+Remove](/extensions-kit/Extensions/Foundation/Array/Array%2BRemove.swift) 
A set of methods that remove `Element` form an array by mutating it

```swift
var test = [1,2,3,4,5,6,7,8]

test.remove(object: 8)
// test contains the following elements [1,2,3,4,5,6,7]

test.remove(objects: [1,2,4])
// test contains the following elements [3,5,6,7]

test.remove(objects: 5,6)
// test contains the following elements [3,7]
```

#### [Array+InsertionSort](/extensions-kit/Extensions/Foundation/Array/Array%2BIntersection.swift) 
Adds support for `Insertion Sort` algorithm

#### [Array+MergeSort](/extensions-kit/Extensions/Foundation/Array/Array%2BMergeSort.swift) 
Adds support for `Merget Sort` algorithm

#### [Array+QuickSortHoareScheme](/extensions-kit/Extensions/Foundation/Array/Array%2BQuickSortHoareScheme.swift) 
Adds support for `Quick Sort` algorithms using `Hoare's` partitioning scheme 

#### [Array+QuickSortLomutoScheme](/extensions-kit/Extensions/Foundation/Array/Array%2BQuickSortLomutoScheme.swift) 
Adds support for `Quick Sort` algorithm using `Lomuto's` partitioning scheme 

#### [Array+BubbleSort](/extensions-kit/Extensions/Foundation/Array/Array%2BBubbleSort.swift) 
Adds support for `Bubble Sort` algorithm

#### [Array+ShellSort](/extensions-kit/Extensions/Foundation/Array/Array%2BShellSort.swift) 
Adds support for `Shell Sort` algorithm

#### [Array+RadixSort](/extensions-kit/Extensions/Foundation/Array/Array%2BRadixSort.swift) 
Adds support for `Radix Sort` algoritm

### Bool
#### [Bool+Int](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Bool/Bool%2BInt.swift) 
Adds a property that returns `Int` representation of `self`

#### [Bool+Random](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Bool/Bool%2BRandom.swift) 
Adds a random property for `self`

### ClosedRange
#### [ClosedRange+Random](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/ClosedRange/ClosedRange%2BRandom.swift) 
Adds a property that generates a random `Int` with respect to `self`

### Collection 
#### [Collection+ParallelIteration](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BParallelIteration.swift) 
Adds `parallelForEach` method 

#### [Collection+RandomItem](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BRandomItem.swift) 
Adds a property that returns a random element from `self`

#### [Collection+Sum&Average](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Collection/Collection%2BSum%26Average.swift)  
Adds two properties for `sum` and `average` with the corresponding functionality

#### [Collection+SafeSubscript](/extensions-kit/Extensions/Foundation/Collection/Collection%2BSafeSubscript.swift) 
Safely checks whether the collection is able to retreive an element for the given Index, otherwise it will return nil

### RandomAccessCollection
#### [RandomAccessCollection+BinarySearch](/extensions-kit/Extensions/Foundation/RandomAccessCollection/RandomAccessCollection%2BBinarySearch.swift) 
Implementation of `Binary Search` algorithm 

### Decodable
#### [Decodable+DecodeFromFile](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Decodable/Decodable%2BDecodeFromFile.swift) 
Decodes a file into a type:

```swift
// User is a .json file containing the following data:
// {
//    "name":"Willy",
//    "age":30
// }

let decodedUser = try? User.decodeFromFile(named: "User")
// decodedUser will be a Decodable struct named User with two properties for name and age
```

### Dictionary
#### [Dictionary+GetOrAddValue](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BGetOrAddValue.swift) 
Parses `self` as `JSON` to `Data` or `String`

#### [Dictionary+JSON](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BJSON.swift) 
Checks for a value for a given key or creates a new key/value pair if none was found

#### [Dictionary+ConvenienceWrappers](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BConvenienceWrappers.swift) 
Adds wrappers around common operations such as `has(key: )->Bool` and `each(: (Key, Value)->())`

#### [Dictionary+Difference](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BDifference.swift) 
Computes differences between self and the input dictionaries 

#### [Dictionary+Intersection](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BIntersection.swift) 
Computes intersection of self and the input Dictionaries

#### [Dictionary+Map](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BMap.swift) 
Custom mapping function

#### [Dictionary+Union](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Dictionary/Dictionary%2BUnion.swift) 
Unions self and the input dictionaries

### Double
#### [Double+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Double/Double%2BRounded.swift) 
Rounds `self` to decimal places value

#### [Double+CurrencyShorcuts](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Double/Double%2BCurrencyShortcuts.swift) 
Adds several commonly used currency shortcuts as properties

### Date
#### [Date+FirstLast](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Date/Date%2BFirstLast.swift) 
Adds a number of properties that allow to quickly access: `first day of a week`, `start of a day`, `end of a day` and a `number of days in a month`

#### [Date+PreviousNext](/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Date/Date%2BPreviousNext.swift)
Adds properties that allow to get access to the `previous` and `next` days

### Float 
#### [Float+Rounded](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Float/Float%2BRounded.swift) 
Rounds `self` to decimal places value

### Int
#### [Int+Clamp](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BClamp.swift) 
Clamps `self` into a range that can be described using `ClosedRange` or two separate properties

#### [Int+Digits](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BDigits.swift) 
Adds `digitCount` property that contains the number of digits for `self`

#### [Int+EvenOdd](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BEvenOdd.swift) 
Checks whether `self` is even or if it's odd

#### [Int+Factorial](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BFactorial.swift) 
Computes *factorial* of `self`

#### [Int+Power](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BPower.swift) 
Operator that performs `exponentiation` matematical operation, where left number is the *base* and the right one is the *exponent*

#### [Int+Random](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BRandom.swift) 
Generates pseudo-random number in a range that can be specified as `ClosedRange` or two separate `Int` properties

#### [Int+Roman](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/Int/Int%2BRoman.swift) 
Converts `self` into *Roman* number (as `String`)

#### [Int+DecimalToBinary](/extensions-kit/Extensions/Foundation/Int/Int%2BDecimalToBinary.swift) 
Allows to convert `decimal` number to `binary` format and vice versa 

### OptionSet
#### [OptionSet+Operations](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/OptionSet/OptionSet%2BOperations.swift) 
Adds support for in-place `insert` and `remove` operations

### MutableCollection 
[MutableCollection+Shuffle](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/Foundation/MutableCollection/MutableCollection%2BShuffle.swift) 
In-place shuffling of `self`

### Sequence  
#### [Sequence+Shuffle](/extensions-kit/Extensions/Foundation/Sequence/Sequence%2BShuffle.swift) 
Shuffles the elements of `self`

#### [Sequence+Count](/extensions-kit/Extensions/Foundation/Sequence/Sequence%2BCount.swift) 
Counts the number of occurrences of a logical expression

#### [Sequence+DuplicatesRemoved](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Sequence/Sequence%2BDuplicatesRemoved.swift) 
Removes the duplicate elements and returns the new Sequence without duplicates if any

### String
#### [String+Subscript](/extensions-kit/Extensions/Foundation/String/String%2BSubscript.swift) 
Adds conformances to `CoutableClosedRange`, `CountableRange`, `PartialRangeThrough` and `PartialRangeFrom` protocols support in a form of subscripts

#### [String+Digits](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BDigits.swift) 
Combines decimal digits into a single `String` property

#### [String+FormattedDate](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BFormattedDate.swift) 
Creates a `Date` instance from `self` based in the specified format

#### [String+IndexOf](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BIndexOf.swift) 
Finds the first occurence for a given `String`

#### [String+Base64](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BBase64.swift) 
Encodes/decodes `self` to `Base64` encoding

#### [String+Validation](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/String/String%2BValidation.swift) 
Contains a number of extensions for validating `String` based on the following: `isAlphanumeric`, `hasLetters`, `hasNumbers`, `isEmail`, `isAlphabetic`

### NSObject
#### [NSObject+ClassName](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/NSObject/NSObject%2BClassName.swift)
Allows to get the exact class name:

```swift
let className = Foo.nameOfclass
// className property holds `Foo`
```

### NotificationCenter
#### [NotificationCenter+PostUtils](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/NotificationCenter/NotificationCenter%2BPostUtils.swift)
Various utility extensions that help to reduce the boilerplate code:

```swift
NotificationCenter.post(notification: .userHasUpdated)
```

### OperationQueue
#### [OperationQueue+MainUtils](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/Operaton/OperationQueue%2BMainUtils.swift)
Utility extensions for `.main` operation queue:

```swift
OperationQueue.isMain // if current operation queue is the main the result will be true, otherwise false
OperationQueue.onMain {
        // This closure will be executed on the main operation queue
}
```

### URL
#### [URL+QRImage](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/Foundation/URL/URL%2BQRImage.swift)
Creates a QR image from the `absoluteString` of the `URL`:

```swift
let customUrlQRImage = url.qrImage()
// customUrlQRImage holds image data for QR image that represents the given URL address
```

## UIKit

### Badge
#### [Badge](/extensions-kit/Extensions/UIKit/Badge/Badge.swift) 
A custom type, wrapper badge app icon `API` that simplifies development

### UIScreen
#### [UIScreen+InterfaceOrientation](/extensions-kit/Extensions/UIKit/UIScreen/UIScreen%2BInterfaceOrientation.swift) 
Interace orientation for the current `UIScreen`

### UIApplication
#### [UIApplication+SafeAreas](/extensions-kit/Extensions/UIKit/UIApplication/UIApplication%2BSafeAreas.swift) 
Contains extensions that allow to get numerical representations of `top` and `bottom` safe areas

### NSLayoutConstraint
#### [NSLayoutConstraint+Animation](/extensions-kit/Extensions/UIKit/NSLayoutConstraint/NSLayoutConstraint%2BAnimation.swift) 
Allows a constraint to be animated when `animated` flag is a set to `true` (default is `false`)

#### [NSLayoutConstraint+Activation](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/NSLayoutConstraint%2BActivation/NSLayoutConstraint%2BActivation.swift) 
Adds convenience methods for *setting* and *activating* layout priorities

### UIView
#### [UIView+CACorners](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIView/UIView%2BCACorners.swift) 
Convenience extension for setting and getting round corners

#### [UIView+BezierRoundedCorners](/extensions-kit/Extensions/UIKit/UIView/UIView%2BBezierRoundedCorners.swift) 
Yet another extension for rounding corners

#### [UIView+HuggingPriority](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIView/UIView%2BHuggingPriority.swift) 
Convenience wrappers that simplify inerfaces for *setContentHuggingPriority* and *setContentCompressionResistancePriority* methods

#### [UIView+Screenshot](/extensions-kit/Extensions/UIKit/UIView/UIView%2BScreenshot.swift) 
Allows to take a screenshot of self

#### [UIView+Constraints](/extensions-kit/Extensions/UIKit/UIView/UIView%2BConstraints.swift) 
Adds convenience auto-layout methods that allow to `pin`, `add`, get `height` & `width` and to get all the constrains for a particular `UIView`

#### [UIView+LayoutAnimation](/extensions-kit/Extensions/UIKit/UIView/UIView%2BLayoutAnimation.swift) 
Adds animation extensions that operate on layout constraints

#### [UIView+Masking](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIView/UIView%2BMasking.swift) 
Masks the view with the specified UIRectCorner array and corner radius:

```swift
let view = UIView()
view.mask(corners: .allCorners, with: 10)
```

### UIColor
#### [UIColor+ColorComponents](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIColor/UIColor%2BColorComponents.swift)
Adds support for missing color components properties such as `rgba`, `hsba` and `grayscale`

#### [UIColor+Blend](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIColor/UIColor%2BBlend.swift)
Blends two colors by mixing the `RGBA` components:

```swift
let blendedColor = red.blend(with: blue, intensity: 0.5)
```

#### [UIColor+Brightness](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIColor/UIColor%2BBrightness.swift)
Changes the brightness of a color:

```swift
let brighterRed = red.increaseBrightness(0.25)
```

### UICollectionView
#### [UICollectionView+CustomCellRegistration](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UICollectionView/UICollectionView%2BCustomCellRegistration.swift) 
Registers custom `UICollectionViewCell` for a `UICollectionView` instance. `UICollectionViewCell` needs to be located in current Bundle

#### [UICollectionView+ScrollingUtils](/extensions-kit/Extensions/UIKit/UICollectionView/UICollectionView%2BScrollingUtils.swift) 
Adds methods that allow to programmatically scroll to the `top`, `bottom` or to the specified `index path` of a table view

#### [UICollectionView+Safety](/extensions-kit/Extensions/UIKit/UICollectionView/UICollectionView%2BSafety.swift) 
Adds validation utils 

#### [UICollectionView+Operations](/extensions-kit/Extensions/UIKit/UICollectionView/UICollectionView%2BOperations.swift) 
Convenience `reload`, `delete` and `insert` operations for collections of item indices

### UITableView
#### [UITableView+FooterHeaderUtils](/extensions-kit/Extensions/UIKit/UITableView/UITableView%2BFooterHeaderUtils.swift)  
The extension adds convenience helpers for working with `Footer` and `Header` views

#### [UITableView+ScrollingUtils](/extensions-kit/Extensions/UIKit/UITableView/UITableView%2BScrollingUtils.swift)  
Adds methods that allow to programmatically scroll to the `top`, `bottom` or to the specified `index path` of a table view

#### [UITableView+Safety](/extensions-kit/Extensions/UIKit/UITableView/UITableView%2BSafety.swift) 
Adds validation utils 

### UIImage
#### [UIImage+Downsample](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BDownsample.swift)
Downsamples the input image to the specified point size and scale factor. Can be used to present the thumbnails, supports caching:

```swift
let downsampledImage = UIImage.downsample(imageAt: url, to: targetSize)
// downsampledImage stores a `UIImage` instance that was cached and downsized to the `targetSize`
```

#### [UIImage+ImageFromUIView](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BImageFromUIView.swift) 
Renders `UIView` to `UIImage`

#### [UIImage+LandscapeCameraOrientationFix](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BLandscapeCameraOrientationFix.swift) 
Fixes image orientation for cases when the image was captured using `AVFoundation` in *landscape interface orientation*

#### [UIImage+RawOrientation](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BRawOrientation.swift) 
Raw image orientation (from `UIImageOrientation` to `Int32`) 

#### [UIImage+Resize](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BResize.swift) 
Class-level extension that allows to resize input image based on expected image *width* or/and *height*

#### [UIImage+SolidColor](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BSolidColor.swift) 
Create a `UIImage` from the *color data* and *size*

#### [UIImage+Inverted](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIImage/UIImage%2BInverted.swift) 
Adds a property that returns an *inverted* copy of `self`

### UIImageView
- [UIImageView+DownloadFromURL](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImageView/UIImageView%2BDownloadFromURL.swift) - adds a convenience method for downloading and parsing `UIImage` with the specified `URL`
- [UIImageView+Masking](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/UIKit/UIImageView/UIImageView%2BMasking.swift) - masks a given `UIImage` with the target image size

### UIAlertController
#### [UIAlertController+Presentation](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIAlertController/UIAlertController%2BPresentation.swift) 
Presents a UIAlertController with the given title, message, tintColor and alert actions:

```swift
UIAlertController.present(with: "Warning!", and: "The item will be deleted", from: targetViewController) { () -> [UIAlertAction] in
        let deleteAction = UIAlertAction(title: "Delete",
                                         style: .destructive,
                                         handler: { (action) in
                // Callback handling
        })
            
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel,
                                         handler: { (action) in
                // Callback handling
        })
            
        return [deleteAction, cancelAction]
}
```

### UIViewController

#### [UIViewController+ContainerController](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIViewController/UIViewController%2BContainerViewController.swift)
Loads, adds and removes container view controllers as children

#### [UIViewController+ChildViewControllers](/extensions-kit/Extensions/UIKit/UIViewController/UIViewController%2BChildViewControllers.swift) 
Addds convenience methods for `adding` and `removing` child view controllers

#### [UIViewController+Storyboard](/extensions-kit/Extensions/UIKit/UIViewController/UIViewController%2BStoryboard.swift) 
Instantiates a `UIViewController` instance from a `Storyboard` using the `UIViewController's` name as a reference name of the `Storyboard` file. Used in cases when `Coordinator` or `Flow` design patterns need to be implemented

```swift
// Instantiation of a view controller by explicitly setting the storyboard and identifier
let loginViewController = UIViewController.instantiateController(from: mainStoryboard, identifier: "LoginViewController")

// An another way to instantiate a UIViewController instnace: here the identifier will be the class name
let viewController = UIViewController.instantiateController(from: mainStoryboard)
```

### UIWindow
#### [UIWindow+Instantiate](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/UIKit/UIWindow/UIWindow%2BInstantiate.swift)
Syntactic sugar for much easier `UIWindow` instantiation:

```swift
window = UIWindow.create(with: coordinator.rootViewController, option: .keyAndVisible)
```

## os
### OSLog
#### [OSLog+LogLevels](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/os/OSLog/OSLog%2BLogLevels.swift)
Adds a number of convenient log levels and a global function that simplifies logging:

```swift
os_log("Received .json data from the remove", log: .network)
os_log("Attempting to sync with the main UI thread", log: .ui)
```

## SpriteKit
#### [SKTimingFunction](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTimingFunction.swift) 
Adds **36(!)** different timing functions 

### SKEmitterNode
#### [SKEmitterNode+AdvanceSimulation](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKEmitterNode/SKEmitterNode%2BAdvanceSimulation.swift) 
Safely advance the particle simulation for a given `TimeInterval`

### SKSpriteNode
#### [SKSpriteNode+GIF](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKSpriteNode/SKSpriteNode%2BGIF.swift)  
Adds support for uploading and playing `GIFs` from local files

### SKScene
#### [SKScene+SerialSpriteLoading](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKScene/SKScene%2BSerialSpriteLoading.swift)
Uploads a set of scene graph nodes with a specific pattern, useful when a scene contains a lot of nodes, but just a specific subset needs to be processed or accessed

#### [SKScene+ReferenceNodeFix](/extensions-kit/Extensions/SpriteKit/SKScene/SKScene%2BReferenceNodeFix.swift) 
A small fix that resolves the default behavior for nodes that were referenced from differnet .sks files. The thing is that they do not launch their animations by default, so this small `hack` fixes this issue

### SKTexture
#### [SKTexture+LinearGradient](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTexture/SKTexture%2BLinearGradient.swift) 
Adds a convenience initializer that generates a `gradient texture` for the specified *size*, *start* and *end* colors

### SKTextureAtlas
#### [SKTextureAtlas+FramesLoader](https://github.com/jVirus/ios-extensions/blob/master/extensions-kit/Extensions/SpriteKit/SKTextureAtlas/SKTextureAtlas%2BFramesLoader.swift) 
Uploads an animation sequence from a texture atlas and returns an array of textures that can be futher used

## SceneKit

#### [SCNVector3+Operators](/extensions-kit/Extensions/SceneKit/SCNVector3%2BOperators.swift) 
Adds support for various mathematical operators for `SCNVector3` type

#### [SCNAction+MoveAlong](https://github.com/jVirus/extensions-kit/blob/master/extensions-kit/Extensions/SceneKit/SCNAction%2BMoveAlong.swift)
The extension adds a new action method that allows a node to move along a `UIBezierPath`:

```swift
let flyoverAction = SCNAction.moveAlong(path: flyoverPath, z: 10, speed: plane.speed)
plane.run(flyoverAction)
```

## PhotoKit

### PHAsset
#### [PHAsset+URL](/extensions-kit/Extensions/PhotoKit/PHAsset/PHAsset%2BURL.swift) 
Provides possibility to get `URL` for image and video media types
-->

# 🙋‍♀️🙋‍♂️Contributing 
- There is just one main rule for contributors - **please include your extensions in separete files**. It's important since such extension can be more easily referenced and reused.
- The other `soft` rule is - please include `unit tests` with your extensions. 

# 👨‍💻 Author 
[Astemir Eleev](https://github.com/jVirus)

# 🔖 Licence
The project is available under [MIT licence](https://github.com/jVirus/extensions-kit/blob/master/LICENSE)
