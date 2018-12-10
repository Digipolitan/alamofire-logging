// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "AlamofireLogging",
    products: [
        .library(name: "AlamofireLogging", targets: ["AlamofireLogging"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.8.0")
    ],
    targets: [
        .target(
            name: "AlamofireLogging",
            dependencies: [
                "Alamofire"
            ]
        ),
        .testTarget(
            name: "AlamofireLoggingTests",
            dependencies: [
                "AlamofireLogging"
            ]
        )
    ]
)
