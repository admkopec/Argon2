// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Argon2",
    products: [
        .library(name: "Argon2", targets: ["Argon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/P-H-C/phc-winner-argon2.git", branch: "master"),
    ],
    targets: [
        .target(name: "Argon", dependencies: [
            .product(name: "argon2", package: "phc-winner-argon2")
        ], path: "./Sources/Argon2"),
        .testTarget(name: "Argon2Tests", dependencies: ["Argon"]),
    ]
)
