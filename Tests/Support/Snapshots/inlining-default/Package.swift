// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "inlining-default",
    platforms: [.iOS(.v13), .macCatalyst(.v13), .macOS(.v10_15), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(name: "inlining-default", targets: ["inlining-default"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kean/Get", from: "1.0.2")
    ],
    targets: [
        .target(name: "inlining-default", dependencies: [
            .product(name: "Get", package: "Get")
        ], path: "Sources")
    ]
)