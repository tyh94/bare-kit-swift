// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "BareKitSwift",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "BareKitSwift",
            targets: ["BareKitSwift"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "BareKit",
            url: "https://github.com/tyh94/bare-kit-swift-framework/releases/download/v2.0.2/BareKit.xcframework.zip",
            checksum: "866fae477668fc2ab8dacd11c4bcc6f71ade3365264dbc828bce76ed88582276"
        ),
        .target(
            name: "BareKitBridge",
            dependencies: ["BareKit"]
        ),
        .target(
            name: "BareKitSwift",
            dependencies: ["BareKitBridge"]
        ),
        .testTarget(
            name: "BareKitTests",
            dependencies: ["BareKitSwift", "BareKit"]
        )
    ]
)
