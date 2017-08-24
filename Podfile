workspace 'AlamofireLogging.xcworkspace'

## Frameworks targets
abstract_target 'Frameworks' do
	use_frameworks!

	pod 'Alamofire', '~> 4.0'

	target 'AlamofireLogging-iOS' do
		platform :ios, '8.0'
	end

	target 'AlamofireLogging-watchOS' do
		platform :watchos, '2.0'
	end

	target 'AlamofireLogging-tvOS' do
		platform :tvos, '9.0'
	end

	target 'AlamofireLogging-OSX' do
		platform :osx, '10.10'
	end
end

## Tests targets
abstract_target 'Tests' do
	use_frameworks!

	pod 'Alamofire', '~> 4.0'

	target 'AlamofireLoggingTests-iOS' do
		platform :ios, '8.0'
	end

	target 'AlamofireLoggingTests-tvOS' do
		platform :tvos, '9.0'
	end

	target 'AlamofireLoggingTests-OSX' do
		platform :osx, '10.10'
	end
end

## Samples targets
abstract_target 'Samples' do
	use_frameworks!

	pod 'Alamofire', '~> 4.0'

	target 'AlamofireLoggingSample-iOS' do
		project 'Samples/AlamofireLoggingSample-iOS/AlamofireLoggingSample-iOS'
		platform :ios, '8.0'
	end

	abstract_target 'watchOS' do
		project 'Samples/AlamofireLoggingSample-watchOS/AlamofireLoggingSample-watchOS'
		target 'AlamofireLoggingSample-watchOS' do
			platform :ios, '8.0'
		end

		target 'AlamofireLoggingSample-watchOS WatchKit Extension' do
			platform :watchos, '2.0'
		end
	end

	target 'AlamofireLoggingSample-tvOS' do
		project 'Samples/AlamofireLoggingSample-tvOS/AlamofireLoggingSample-tvOS'
		platform :tvos, '9.0'
	end

	target 'AlamofireLoggingSample-OSX' do
		project 'Samples/AlamofireLoggingSample-OSX/AlamofireLoggingSample-OSX'
		platform :osx, '10.10'
	end
end
