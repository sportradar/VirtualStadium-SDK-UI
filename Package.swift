
// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VirtualStadiumUISDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "VirtualStadiumUISDK",
            targets: ["VirtualStadiumUISDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/sportradar/VirtualStadium-SDK-Core", .exact("0.1.361")),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/8e3a25fa/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "982449875265d96e1ec951ee36aa195dfa54143cce79a123aa45d72d520810ba"
        ),
        .target(
            name: "VirtualStadiumUISDKTarget",
            dependencies: [
                .target(name: "VirtualStadiumUISDK"),
                .product(name: "VirtualStadiumDataSDK", package: "VirtualStadium-SDK-Core"),
            ],
            path: "VirtualStadiumUISDKTarget")
    ]
)

