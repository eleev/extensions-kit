// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExtensionsKit",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ExtensionsKit",
            targets: [
                "ExtendedAVFoundation",
                "ExtendedCoreAnimation",
                "ExtendedCoreGraphics",
                "ExtendedCoreImage",
                "ExtendedFoundation",
                "ExtendedFoundationDataStructures",
                "ExtendedFoundationSorting",
                "Extendedos",
                "ExtendedPhotoKit",
                "ExtendedSceneKit",
                "ExtendedSpriteKit",
                "ExtendedUIKit"
        ]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ExtendedAVFoundation",
            dependencies: []),
        .target(
            name: "ExtendedCoreAnimation",
            dependencies: []),
        .target(
            name: "ExtendedCoreGraphics",
            dependencies: []),
        .target(
            name: "ExtendedCoreImage",
            dependencies: []),
        .target(
            name: "ExtendedFoundation",
            dependencies: [
                "ExtendedCoreImage"
        ]),
        .testTarget(
            name: "ExtendedFoundationTests",
            dependencies: [
                "ExtendedFoundation"
        ]),
        .target(
            name: "ExtendedFoundationDataStructures",
            dependencies: []),
        .target(
            name: "ExtendedFoundationSorting",
            dependencies: []),
        .testTarget(
            name: "ExtendedFoundationSortingTests",
            dependencies: [
                "ExtendedFoundationSorting"
        ]),
        .target(
            name: "Extendedos",
            dependencies: []),
        .target(
            name: "ExtendedPhotoKit",
            dependencies: []),
        .target(
            name: "ExtendedSceneKit",
            dependencies: [
                "ExtendedCoreGraphics",
                "ExtendedUIKit"
        ]),
        .target(
            name: "ExtendedSpriteKit",
            dependencies: []),
        .target(
            name: "ExtendedUIKit",
            dependencies: [
                "ExtendedFoundation"
        ])
    ]
)
