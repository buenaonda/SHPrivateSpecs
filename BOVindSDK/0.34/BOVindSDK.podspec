Pod::Spec.new do |s|
  
  s.name     = 'BOVindSDK'
  s.version  = '0.34'
  s.license  = 'Closed Source'
  s.summary  = 'Vind Cocoa SDK.'
  s.authors  = { 'Diego Torres' => 'contact@dtorres.me'}
  s.homepage = "http://www.dtorres.me"
  s.source   = { :git => 'git@github.com:buenaonda/BOVindSDK.git', :tag => s.version.to_s}
  s.source_files = 'BOVindSDK/Classes/*.{h,m}'
  s.requires_arc = true

  s.ios.deployment_target = '7.0'

  s.osx.deployment_target = '10.9'

  s.dependency 'AFNetworking/NSURLConnection', "~> 2.0"
  s.dependency 'BOPersistentOperationQueue'
  s.frameworks = "AVFoundation", "ImageIO", "CoreMedia"
  s.osx.frameworks = "CoreServices"
  s.ios.frameworks = "MobileCoreServices"
  
end