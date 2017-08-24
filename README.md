AlamofireLogging
=================================

[![Build Status](https://travis-ci.org/Digipolitan/alamofire-logging-swift.svg?branch=master)](https://travis-ci.org/Digipolitan/alamofire-logging-swift)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/AlamofireLogging.svg)](https://img.shields.io/cocoapods/v/AlamofireLogging.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/AlamofireLogging.svg?style=flat)](http://cocoadocs.org/docsets/AlamofireLogging)
[![Twitter](https://img.shields.io/badge/twitter-@Digipolitan-blue.svg?style=flat)](http://twitter.com/Digipolitan)

Logging support for Alamofire

## Installation

### CocoaPods

To install AlamofireLogging with CocoaPods, add the following lines to your `Podfile`.

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0' # or platform :osx, '10.10' if your target is OS X.
use_frameworks!

pod 'AlamofireLogging'
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

AlamofireLogging is licensed under the [BSD 3-Clause license](LICENSE).
