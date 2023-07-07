
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
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/e7d93832/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "8fa322bdab5ef190398098727de7144129ebf4bfb0115a18bb94f63a9ac2054b"
        )
    ]
)

