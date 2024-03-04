
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
        .package(url: "https://github.com/sportradar/VirtualStadium-SDK-Core", .exact("1.1.661")),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://artifacts.vs.sportradar.com/virtualstadium/uisdk/iOS/frameworks-prod/VirtualStadiumUISDK_1.1.1053.xcframework.zip",
            checksum: "9892ab933af56eddb2ac3d62067079d1b4ccf18bdb11173542dc3f3bb6df1c89"
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

