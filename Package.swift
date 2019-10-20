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
                "ExAVFoundation",
                "ExCoreAnimation",
                "ExCoreGraphics",
                "ExCoreImage",
                "ExFoundation",
                "ExFoundationDataStructures",
                "Exos",
                "ExPhotoKit",
                "ExSceneKit",
                "ExSpriteKit",
                "ExUIKit"
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
            name: "ExAVFoundation",
            dependencies: []),
        .testTarget(
            name: "ExAVFoundationTests",
            dependencies: [
                "ExAVFoundation"
        ]),
        .target(
            name: "ExCoreAnimation",
            dependencies: []),
        .target(
            name: "ExCoreGraphics",
            dependencies: []),
        .target(
            name: "ExCoreImage",
            dependencies: []),
        .target(
            name: "ExFoundation",
            dependencies: [
                "ExCoreImage"
        ]),
        .target(
            name: "ExFoundationDataStructures",
            dependencies: []),
        .target(
            name: "Exos",
            dependencies: []),
        .target(
            name: "ExPhotoKit",
            dependencies: []),
        .target(
            name: "ExSceneKit",
            dependencies: [
                "ExCoreGraphics",
                "ExUIKit"
        ]),
        .target(
            name: "ExSpriteKit",
            dependencies: []),
        .target(
            name: "ExUIKit",
            dependencies: [
                "ExFoundation"
        ])
    ]
)
