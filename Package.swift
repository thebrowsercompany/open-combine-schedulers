// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "open-combine-schedulers",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "OpenCombineSchedulers",
      targets: ["OpenCombineSchedulers"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-concurrency-extras", from: "1.0.0"),
    .package(url: "https://github.com/pointfreeco/xctest-dynamic-overlay", from: "1.0.2"),
    .package(url: "https://github.com/OpenCombine/OpenCombine.git", from: "0.14.0"),
  ],
  targets: [
    .target(
      name: "OpenCombineSchedulers",
      dependencies: [
        .product(name: "ConcurrencyExtras", package: "swift-concurrency-extras"),
        .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay"),
        .product(name: "OpenCombineShim", package: "OpenCombine"),
      ]
    ),
    .testTarget(
      name: "OpenCombineSchedulersTests",
      dependencies: [
        "OpenCombineSchedulers"
      ]
    ),
  ]
)
