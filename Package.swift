
// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

let package = Package(
    name:  "VirtualStadiumUISDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "VirtualStadiumUISDK",
            targets: [VirtualStadiumUISDKTarget]
        ),
    ],
    dependencies: [
        .package(url: git@gitlab.sportradar.ag:mdp-next/virtual-stadium-ios-spm.git, exact: ),
    ],
    targets: [
        .binaryTarget(
            name: "VirtualStadiumUISDK",
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/2328f5e8/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "d0e625af2105506e80635aa3b9e4c1866c6bfc26f041c2450b3fc137326d7e7f"
        ),
        .target(
            name: VirtualStadiumUISDKTarget,
            dependencies: [
                .target(name: "VirtualStadiumUISDK"),
                .product(name: VirtualStadiumDataSDK, package: virtual-stadium-ios-spm),
            ],
            path: VirtualStadiumUISDKTarget)
    ]
)

