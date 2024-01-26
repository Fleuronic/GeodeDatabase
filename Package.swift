// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GeodeDatabase",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        .library(
            name: "GeodeDatabase",
            targets: ["GeodeDatabase"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Fleuronic/GeodeService", branch: "main"),
        .package(url: "https://github.com/Fleuronic/Catenoid", branch: "main"),
    ],
    targets: [
        .target(
            name: "GeodeDatabase",
            dependencies: [
                "GeodeService",
                "Catenoid",
            ]
        ),
    ]
)
