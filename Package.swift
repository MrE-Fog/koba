// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Koba",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Koba",
            targets: ["Koba"])
    ],
    dependencies: [
        .package(url: "https://github.com/Kitura/Kitura.git", .upToNextMajor(from: "2.9.200"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Koba",
            dependencies: ["Kitura"]
        ),
        .testTarget(
            name: "KobaTests",
            dependencies: ["Koba"])
    ]
)
