
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
            url: "https://vs-artifacts.mapinonprod.sportradar.com/apple/virtual-stadium-ios-ui-sdk/5a5305d6/release/VirtualStadiumUISDK.xcframework.zip",
            checksum: "87e1b36652b9d4140d23655959af354ff3aad02638a6c64037bf3f7e94c66180"
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

