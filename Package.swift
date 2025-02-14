// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Sanity",
  platforms: [
    .macOS(.v11),
    .iOS(.v14),
    .tvOS(.v14),
    .watchOS(.v7)
  ],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "Sanity",
      targets: ["Sanity"]),
  ],
  dependencies: [
    .package(name: "EventSource", url: "https://github.com/euwars/EventSource", .revision("b5c8ab7692fbc1b7b45f9bb0eff81d2c5b5e50bb"))
    // .package(url: /* package url */, from: "1.0.0"),
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "Sanity",
      dependencies: ["EventSource"]),
    .testTarget(
      name: "SanityTests",
      dependencies: ["Sanity"]),
  ]
)
