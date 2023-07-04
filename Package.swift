
// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VirtualStadiumUISDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "VirtualStadiumUISDK",
            targets: ["VirtualStadiumUISDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/597f025f/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "76c39cfcc57ab59c9989845083e2a0dbd099453e4eda0744f07a1c67b8da3352"
        )
    ]
)

