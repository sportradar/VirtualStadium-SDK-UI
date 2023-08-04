
// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/917ea1bb/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "dd8a47e49cd41be4c7483618f023fd9de05e090ae3ccc9d8b2e8431937fa7ccf"
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

