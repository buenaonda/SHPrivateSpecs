Pod::Spec.new do |s|
  s.name     = 'OLCashier'
  s.version  = '0.2'
  s.license  = 'MIT'
  s.summary  = 'Your friendly StoreKit Cashier'
  s.authors  = { 'Diego Torres' => 'contact@dtorres.me'}
  s.homepage = "http://www.dtorres.me"
  s.source   = { :git => 'git@github.com:dtorres/OLCashier.git', :tag => s.version.to_s}
  s.source_files = 'Classes/*.{h,m}'
  s.public_header_files = 'Classes/OLCashier.h'
  s.requires_arc = true
  
  s.osx.frameworks = "StoreKit"
  s.ios.frameworks = "StoreKit"
  
  s.ios.deployment_target = '4.0'
  s.osx.deployment_target = '10.7'

end