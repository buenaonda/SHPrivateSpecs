Pod::Spec.new do |s|
  s.name     = 'BOVindSDK'
  s.version  = '0.9.1'
  s.license  = 'Closed Source'
  s.summary  = 'Vind Cocoa SDK.'
  s.authors  = { 'Diego Torres' => 'contact@dtorres.me'}
  s.homepage = "http://www.dtorres.me"
  s.source   = { :git => 'gitolite@66.175.220.174:BOVindSDK', :tag => s.version.to_s}
  s.source_files = 'BOVindSDK/*.{h,m}'
  s.requires_arc = true

  s.ios.deployment_target = '5.0'

  s.osx.deployment_target = '10.7'

  s.dependency 'AFNetworking'
  s.dependency 'BOPersistentOperationQueue'
  s.frameworks = "AVFoundation", "ImageIO", "MobileCoreServices", "CoreMedia"
  
end