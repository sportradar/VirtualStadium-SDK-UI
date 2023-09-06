
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
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/b2c9abc1/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "8afb7789669bad1972032a8f9b84f8ef5133eec08a7e952bbdf5b39e3cf20a1e"
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

