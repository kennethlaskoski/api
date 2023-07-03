// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "api",
    products: [.executable(name: "kl.service", targets: ["api"])],
      dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from:"0.3.0")),
      ],
    targets: [
        .executableTarget(
            name: "api",
            dependencies: [.product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime")],
            path: "Sources"),
    ]
)
