Pod::Spec.new do |s|
  s.name     = 'Carter'
  s.version  = '0.4.2'
  s.license  = 'MIT'
  s.summary  = 'Background session aware NSURSession manager'
  s.authors  = { 'Diego Torres' => 'contact@dtorres.me'}
  s.homepage = "http://www.dtorres.me"
  s.source   = { :git => 'git@github.com:dtorres/Carter.git', :tag => s.version.to_s}
  s.source_files = 'Carter/Classes/*.{h,m}'
  s.requires_arc = true

  s.ios.deployment_target = '7.0'

  s.osx.deployment_target = '10.9'
end