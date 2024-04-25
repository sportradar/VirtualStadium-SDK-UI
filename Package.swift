
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
        .package(url: "https://github.com/sportradar/VirtualStadium-SDK-Core", .exact("1.1.817")),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://artifacts.vs.sportradar.com/virtualstadium/uisdk/iOS/frameworks-prod/VirtualStadiumUISDK_1.1.1270.xcframework.zip",
            checksum: "ea728512a0e814ffcc4f5bc6863cbb4dfe10cfb6785b5a6b6140c9390e25869d"
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

