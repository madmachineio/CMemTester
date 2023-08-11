// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CMemTester",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CMemTester",
            targets: ["CMemTester"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CMemTester",
            cSettings: [
                .define("ULONG_MAX", to: "4294967295UL"),
                .define("TEST_NARROW_WRITES")
            ]),
        .testTarget(
            name: "CMemTesterTests",
            dependencies: ["CMemTester"]),
    ]
)
