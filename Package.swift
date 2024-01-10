
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
        .package(url: "https://github.com/sportradar/VirtualStadium-SDK-Core", .exact("1.1.524")),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://artifacts.vs.sportradar.com/virtualstadium/uisdk/iOS/frameworks-prod/VirtualStadiumUISDK_1.1.865.xcframework.zip",
            checksum: "2a716ebc358d38f5f44d8d3691aff39fec998a488e668e979e71ac66c39df105"
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

