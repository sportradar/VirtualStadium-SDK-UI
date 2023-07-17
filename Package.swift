
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
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/fdcd49e5/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "2573e4b8b60d8d9c36d949ea3c59d2b16342ea1475cdc44ac4679a88b872be08"
        )
    ]
)

