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
            url: "https://github.com/tyh94/bare-kit-swift/releases/download/v2.0.2/BareKit.xcframework.zip",
            checksum: "bd7f8ad32d11d7f592e425eb703a082eea8a34d17c7a09ab4fb9735229a0f7cf"
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
