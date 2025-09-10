import PackagePlugin

@main
struct plugin_package_manager_build: CommandPlugin {
    // Entry point for command plugins applied to Swift Packages.
    func performCommand(context: PluginContext, arguments: [String]) async throws {
        print("Hello, World!")
        let parameters = PackageManager.BuildParameters(configuration: .release)
        let buildResult = try packageManager.build(.target("Core"), parameters: parameters)
        print("Build success: \(buildResult.succeeded)")
        print("Build artifacts: \(buildResult.builtArtifacts)")
    }
}

#if canImport(XcodeProjectPlugin)
import XcodeProjectPlugin

extension plugin_package_manager_build: XcodeCommandPlugin {
    // Entry point for command plugins applied to Xcode projects.
    func performCommand(context: XcodePluginContext, arguments: [String]) throws {
        print("Hello, World!")
    }
}

#endif
