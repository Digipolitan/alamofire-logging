Alamofire+Logging
=================================

[![Swift Version](https://img.shields.io/badge/swift-4.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
[![Build Status](https://travis-ci.org/Digipolitan/alamofire-logging.svg?branch=master)](https://travis-ci.org/Digipolitan/alamofire-logging)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/AlamofireLogging.svg)](https://img.shields.io/cocoapods/v/AlamofireLogging.svg)
[![Carthage Compatible](https://img.shields.io/badge/carthage-compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Package Manager Compatible](https://img.shields.io/badge/swift%20package%20manager-compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Platform](https://img.shields.io/cocoapods/p/AlamofireLogging.svg?style=flat)](http://cocoadocs.org/docsets/AlamofireLogging)
[![Twitter](https://img.shields.io/badge/twitter-@Digipolitan-blue.svg?style=flat)](http://twitter.com/Digipolitan)

Logging support for Alamofire

## Installation

### CocoaPods

To install Alamofire+Logging with CocoaPods, add the following lines to your `Podfile`.

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'AlamofireLogging'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Alamofire+Logging into your Xcode project using Carthage, specify it in your `Cartfile`:

```
github 'Digipolitan/alamofire-logging' ~> 1.0
```

Run `carthage update` to build the framework and drag the built `AlamofireLogging.framework` into your Xcode project.

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding Alamofire+Logging as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/Digipolitan/alamofire-logging.git", from: "1.0.0")
]
```

## How to use ?

```swift
SessionManager.default.request("http://date.jsontest.com").log(level: .verbose).responseJSON { (response) in
  switch response.result {
    case .success(let value):
      print("Alamofire \(value)")
    case .failure(let error):
      print("\(error)")
    }
}
```

There is multiple level of logs:
- none: Does not show any logs
- simple: Only logs the url
- verbose: Logs all the content of the HTTP request such as headers, body, query, ...

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for more details!

This project adheres to the [Contributor Covenant Code of Conduct](CODE_OF_CONDUCT.md).
By participating, you are expected to uphold this code. Please report
unacceptable behavior to [contact@digipolitan.com](mailto:contact@digipolitan.com).

## License

Alamofire+Logging is licensed under the [BSD 3-Clause license](LICENSE).
