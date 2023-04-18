// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "ViewKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ViewKit",
            targets: ["ViewKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ViewKit",
            dependencies: []),
        .testTarget(
            name: "ViewKitTests",
            dependencies: ["ViewKit"]),
    ]
)
