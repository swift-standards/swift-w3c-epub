# swift-w3c-epub

![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

The EPUB publication package and container format defined by the W3C.

## Standard Reference

- **W3C**: EPUB
- **Title**: EPUB

## Installation

Add the package to your `Package.swift` dependencies:

```swift
dependencies: [
    .package(url: "https://github.com/swift-w3c/swift-w3c-epub.git", branch: "main")
]
```

Add the product to a target that needs it:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "W3C EPUB", package: "swift-w3c-epub")
    ]
)
```

## License

Apache 2.0. See [LICENSE.md](LICENSE.md).
