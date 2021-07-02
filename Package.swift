// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ACNetwork",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "ACNetwork",
            targets: ["ACNetwork"]
        )
    ],
    targets: [
        .target(
            name: "ACNetwork", 
            path: "ACNetwork"
        ),
        .testTarget(
            name: "ACNetworkTests",
            dependencies: ["ACNetwork"],
            path: "ACNetworkTests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
