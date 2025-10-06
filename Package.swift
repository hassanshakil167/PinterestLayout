// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "PinterestLayout",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "PinterestLayout",
            targets: ["PinterestLayout"]
        ),
    ],
    targets: [
        .target(
            name: "PinterestLayout",
            path: "Sources/PinterestLayout"
        )
    ]
)

