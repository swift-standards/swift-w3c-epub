// swift-tools-version: 6.4

import PackageDescription

extension String {

    static let w3cEPUBShared: Self = "W3C EPUB Shared"
    static let w3cEPUBPublications: Self = "W3C EPUB Publications"
    static let w3cEPUBContentDocuments: Self = "W3C EPUB Content Documents"
    static let w3cEPUBPackageDocument: Self = "W3C EPUB Package Document"
    static let w3cEPUBNavigationDocument: Self = "W3C EPUB Navigation Document"
    static let w3cEPUBFixedLayouts: Self = "W3C EPUB Fixed Layouts"
    static let w3cEPUBOpenContainerFormat: Self = "W3C EPUB Open Container Format"

    static let w3cEPUB: Self = "W3C EPUB"

    var tests: Self { "\(self) Tests" }
}

extension Target.Dependency {
    static var w3cEPUBShared: Self { .target(name: .w3cEPUBShared) }
    static var w3cEPUBPublications: Self { .target(name: .w3cEPUBPublications) }
    static var w3cEPUBContentDocuments: Self { .target(name: .w3cEPUBContentDocuments) }
    static var w3cEPUBPackageDocument: Self { .target(name: .w3cEPUBPackageDocument) }
    static var w3cEPUBNavigationDocument: Self { .target(name: .w3cEPUBNavigationDocument) }
    static var w3cEPUBFixedLayouts: Self { .target(name: .w3cEPUBFixedLayouts) }
    static var w3cEPUBOpenContainerFormat: Self { .target(name: .w3cEPUBOpenContainerFormat) }
    static var w3cEPUB: Self { .target(name: .w3cEPUB) }
}

let package = Package(
    name: "swift-w3c-epub",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [

        .library(name: "W3C EPUB Shared", targets: ["W3C EPUB Shared"]),
        .library(name: "W3C EPUB Publications", targets: ["W3C EPUB Publications"]),
        .library(name: "W3C EPUB Content Documents", targets: ["W3C EPUB Content Documents"]),
        .library(name: "W3C EPUB Package Document", targets: ["W3C EPUB Package Document"]),
        .library(name: "W3C EPUB Navigation Document", targets: ["W3C EPUB Navigation Document"]),
        .library(name: "W3C EPUB Fixed Layouts", targets: ["W3C EPUB Fixed Layouts"]),
        .library(
            name: "W3C EPUB Open Container Format",
            targets: ["W3C EPUB Open Container Format"]
        ),

        .library(name: "W3C EPUB", targets: ["W3C EPUB"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-molecules/swift-standard-library-extensions.git",
            branch: "main"
        ),
        .package(url: "https://github.com/swift-ietf/swift-bcp-47.git", branch: "main"),
        .package(url: "https://github.com/swift-standards/swift-html-standard.git", branch: "main"),
        .package(url: "https://github.com/swift-standards/swift-css-standard.git", branch: "main"),

    ],
    targets: [

        .target(
            name: "W3C EPUB Shared",
            dependencies: [
                .product(
                    name: "Standard Library Extensions",
                    package: "swift-standard-library-extensions"
                )
            ]
        ),

        .target(
            name: "W3C EPUB Publications",
            dependencies: [
                .w3cEPUBShared
            ]
        ),

        .target(
            name: "W3C EPUB Content Documents",
            dependencies: [
                .w3cEPUBShared,
                .w3cEPUBPublications,
                .product(name: "HTML Standard", package: "swift-html-standard"),
            ]
        ),

        .target(
            name: "W3C EPUB Package Document",
            dependencies: [
                .w3cEPUBShared,
                .w3cEPUBPublications,
                .product(name: "BCP 47", package: "swift-bcp-47"),
            ]
        ),

        .target(
            name: "W3C EPUB Navigation Document",
            dependencies: [
                .w3cEPUBShared,
                .w3cEPUBContentDocuments,
            ]
        ),

        .target(
            name: "W3C EPUB Fixed Layouts",
            dependencies: [
                .w3cEPUBShared,
                .w3cEPUBPackageDocument,
                .product(name: "CSS Standard", package: "swift-css-standard"),
            ]
        ),

        .target(
            name: "W3C EPUB Open Container Format",
            dependencies: [
                .w3cEPUBShared,
                .w3cEPUBPackageDocument,
            ]
        ),

        .target(
            name: "W3C EPUB",
            dependencies: [
                .w3cEPUBShared,
                .w3cEPUBPublications,
                .w3cEPUBContentDocuments,
                .w3cEPUBPackageDocument,
                .w3cEPUBNavigationDocument,
                .w3cEPUBFixedLayouts,
                .w3cEPUBOpenContainerFormat,
            ]
        ),

        .testTarget(
            name: "W3C EPUB Tests",
            dependencies: [
                "W3C EPUB Shared",
                .w3cEPUBPackageDocument,
                .w3cEPUBNavigationDocument,
                .w3cEPUBFixedLayouts,
                .w3cEPUBOpenContainerFormat,
                .product(name: "BCP 47", package: "swift-bcp-47"),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("Lifetimes"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
