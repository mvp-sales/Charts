// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "DGCharts",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "DGCharts",
            targets: ["DGCharts"])
    ],
    targets: [
        .target(
            name: "DGCharts",
            path: "Source/Charts",
            resources: [.copy("PrivacyInfo.xcprivacy")]
        )
    ],
    swiftLanguageVersions: [.v5]
)
