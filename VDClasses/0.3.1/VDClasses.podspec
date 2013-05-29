Pod::Spec.new do |s|
    s.name     = 'VDClasses'
    s.version  = '0.3.1'
    s.license  = 'Closed Source'
    s.summary  = 'Vind Model Classes'
    s.authors  = { 'Diego Torres' => 'contact@dtorres.me'}
    s.homepage = "http://www.dtorres.me"
    s.source   = { :git => 'gitolite@66.175.220.174:VDClasses', :tag => s.version.to_s }
    s.source_files = #'Classes/VD*.{h,m}', 
                     #'Classes/**/VD*.{h,m}'
                     'Classes/Events/VD*.{h,m}'
    s.preserve_path = 'VindCore.xcdatamodeld'
    s.requires_arc = true
    
    s.dependency "BOVindSDK"

    s.ios.deployment_target = '5.0'

    s.osx.deployment_target = '10.7'

end