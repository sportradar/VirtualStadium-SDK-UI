
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
        .package(url: "git@gitlab.sportradar.ag:mdp-next/virtual-stadium-ios-spm.git", exact: ""),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/c15e4f76/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "d6fe235f29c882fa18ec188fe91a6acd44035ede32aed26db3ff700836972c47"
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

