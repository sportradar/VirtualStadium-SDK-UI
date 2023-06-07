
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
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/15cf8eb8/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "7dd399af3a527cd4000c5cc8464dcaa3907ee5a868a8b8bc60a0e95aa7d5d8d7"
        )
    ]
)

