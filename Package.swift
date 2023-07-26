
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
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/586f4b50/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "bfaf2e7429b39fa21852db1c0bffd5fe38dfc8e104410c51d04bd3036053c1ed"
        )
    ]
)

