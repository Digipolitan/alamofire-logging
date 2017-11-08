Pod::Spec.new do |s|
s.name = "AlamofireLogging"
s.version = "1.0.3"
s.summary = "Logging support for Alamofire"
s.homepage = "https://github.com/Digipolitan/alamofire-logging"
s.authors = "Digipolitan"
s.source = { :git => "https://github.com/Digipolitan/alamofire-logging.git", :tag => "v#{s.version}" }
s.license = { :type => "BSD", :file => "LICENSE" }
s.source_files = 'Sources/**/*.{swift,h}'
s.ios.deployment_target = '8.0'
s.watchos.deployment_target = '2.0'
s.tvos.deployment_target = '9.0'
s.osx.deployment_target = '10.10'
s.requires_arc = true
s.dependency 'Alamofire', '~> 4.0'
end
