
// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VirtualStadiumUISDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "VirtualStadiumUISDK",
            targets: ["VirtualStadiumUISDKTarget"]
        ),
    ],
    dependencies: [
        .package(url: "git@gitlab.sportradar.ag:mdp-next/virtual-stadium-ios-spm.git", .exact("")),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/5812b606/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "e95b62d2494a28f4ca0196267c2bbdaf5c34977c6901f17d64fd456bbe10245e"
        ),
        .target(
            name: "VirtualStadiumUISDKTarget",
            dependencies: [
                .target(name: "VirtualStadiumUISDK"),
                .product(name: "VirtualStadiumDataSDK", package: "virtual-stadium-ios-spm"),
            ],
            path: "VirtualStadiumUISDKTarget")
    ]
)

