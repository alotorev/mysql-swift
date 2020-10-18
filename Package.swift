// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "MySQL",
    products: [
        .library(name: "MySQL", targets: ["MySQL"])
    ],
    dependencies: [
        //.package(url: "https://github.com/alotorev/cmysql.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "SQLFormatter"
        ),
        .target(
            name: "MySQL",
            dependencies: [
                "SQLFormatter",
            ]
        ),
        .testTarget(
            name: "MySQLTests",
            dependencies: [
                "MySQL"
            ]
        ),
        .testTarget(
            name: "SQLFormatterTests",
            dependencies: [
                "MySQL"
            ]
        )
    ],
    swiftLanguageVersions: [4]
)
