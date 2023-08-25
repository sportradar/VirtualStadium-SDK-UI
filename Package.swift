
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
        .package(url: "git@gitlab.sportradar.ag:mdp-next/virtual-stadium-ios-spm.git", .exact("")),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/6bf9b1ac/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "e26453fc4a2e109245cdd9c8851bcd5ba64924e161ec1da8d72c4221571b9489"
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

