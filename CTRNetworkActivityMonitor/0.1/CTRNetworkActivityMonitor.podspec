Pod::Spec.new do |s|
  s.name     = 'CTRNetworkActivityMonitor'
  s.version  = '0.1'
  s.license  = 'MIT'
  s.summary  = 'Network Activity Monitor of NSURLSessionTask'
  s.authors  = { 'Diego Torres' => 'contact@dtorres.me'}
  s.source   = { :git => 'git@github.com:dtorres/CTRNetworkActivityMonitor.git', :tag => s.version.to_s}
  s.homepage = "http://www.dtorres.me"
  s.requires_arc = true
  s.default_subspec = "Core"

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'Classes/*.{h,m}'
    ss.header_mappings_dir = "Classes"
  end
  
  s.subspec 'AFNetworking' do |ss|
    ss.dependency  "CTRNetworkActivityMonitor/Core"
    ss.dependency 'AFNetworking/NSURLConnection'
    ss.source_files = "AFNetworkingIntegration/*.{h,m}"
    ss.header_mappings_dir = "AFNetworkingIntegration"
  end
  
end