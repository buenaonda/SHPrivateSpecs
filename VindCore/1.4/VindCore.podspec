Pod::Spec.new do |s|
  s.name     = 'VindCore'
  s.version  = '1.4'
  s.license  = 'Closed Source'
  s.summary  = 'Vind Cocoa Model Classes'
  s.authors  = { 'Diego Torres' => 'contact@dtorres.me'}
  s.homepage = "http://www.dtorres.me"
  s.source   = { :git => 'git@github.com:buenaonda/SH-Cocoa-Models.git', :tag => s.version.to_s}
  s.source_files = 'Classes/*.{h,m}', 'Classes/*/*.{h,m}'
  s.resources = "Classes/Database/*.sql","Classes/Database/*.sql.wip" 
  s.header_mappings_dir = "Classes"
  s.requires_arc = true

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'

  s.dependency 'FMDB'
  s.dependency 'BOVindSDK'
  s.frameworks = "CoreLocation"
  
end