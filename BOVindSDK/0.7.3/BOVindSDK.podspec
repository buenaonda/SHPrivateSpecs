Pod::Spec.new do |s|
  s.name     = 'BOVindSDK'
  s.version  = '0.7.3'
  s.license  = 'Closed Source'
  s.summary  = 'Vind Cocoa SDK'
  s.authors  = { 'Diego Torres' => 'contact@dtorres.me'}
  s.homepage = "http://www.dtorres.me"
  s.source   = { :git => 'gitolite@66.175.220.174:BOVindSDK', :tag => s.version.to_s}
  s.source_files = 'BOVindSDK/*.{h,m}'
  s.requires_arc = true

  s.ios.deployment_target = '5.0'

  s.osx.deployment_target = '10.7'

  s.dependency 'AFNetworking'
  s.dependency 'BOPersistentOperationQueue'
  
  unless defined? $BOVIND_SDK
    $BOVIND_SDK = {}
  end
  
  s.post_install do |library_representation|   
    current_target_data = $BOVIND_SDK[library_representation.target_definition.name] != nil ? $BOVIND_SDK[library_representation.target_definition.name] : {}
    prefix_header = library_representation.prefix_header_path
    prefix_header.open('a') do |file|
      if current_target_data["BASE_URL"]
        file.puts "#define BOVIND_BASEURL @\"#{current_target_data["BASE_URL"]}\"\n"
      end
      if current_target_data["CHUNKS_URL"]
        file.puts "#define BOVIND_CHUNKS_BASEURL @\"#{current_target_data["CHUNKS_URL"]}\"\n"
      end
    end
  end
  
end