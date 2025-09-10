// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "plugin-package-manager-build",
    products: [
        // Products can be used to vend plugins, making them visible to other packages.
        .plugin(
            name: "plugin-package-manager-build",
            targets: ["plugin-package-manager-build"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .plugin(
            name: "plugin-package-manager-build",
            capability: .command(intent: .custom(
                verb: "plugin_package_manager_build",
                description: "prints hello world"
            )),
            dependencies: [
                "Core"
            ],
            path: "Plugins/Plugin"
        ),
        .executableTarget(
            name: "Core",
            path: "Plugins/Core"
        )
    ]
)
