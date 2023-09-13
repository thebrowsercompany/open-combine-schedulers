# ⏰ Open Combine Schedulers

This library roughly tracks Point-Free's [combine-schedulers](https://github.com/pointfreeco/combine-schedulers) repository but aims to leverage [OpenCombine](https://github.com/OpenCombine/OpenCombine) in order to bring support to platforms that do not natively have access to the Combine framework.

## Learn More

Please refer to the documentation created by Point-Free as it is detailed and extensive, you can find that documentation starting [here](https://github.com/pointfreeco/combine-schedulers#learn-more).

## Compatibility

This library is currently compatibly with Swift toolchains down to version 5.8.* and has been tested on:

- macOS 12
- Windows 11

## Installation

You can add OpenCombineSchedulers to a project by adding it as a package dependency.

### Package File

  1. Open up your `Package.swift` file
  2. Add `.package(url: "https://github.com/thebrowsercompany/open-combine-schedulers", branch: "main")` to your `dependencies` section
  3. Ensure you add `.product(name: "OpenCombineSchedulers", package: "open-combine-schedulers")` as a dependency in whatever targets require it.

### Xcode Project

  1. From the **File** menu, select **Swift Packages › Add Package Dependency…**
  2. Enter "https://github.com/thebrowsercompany/open-combine-schedulers" into the package repository URL text field
  3. Depending on how your project is structured:
      - If you have a single application target that needs access to the library, then add **OpenCombineSchedulers** directly to your application.
      - If you want to use this library from multiple targets you must create a shared framework that depends on **OpenCombineSchedulers**, and then depend on that framework from your other targets.

## License

This library is released under the MIT license. See [LICENSE](LICENSE) for details.
