Pod::Spec.new do |s|
  s.name = 'QBImagePickerController'
  s.version = '0.0.2'
  s.summary = 'A clone of the UIImagePickerController with multiple selection feature.'
  s.homepage = 'https://github.com/questbeat/QBImagePickerController'
  s.license = 'MIT'
  s.authors = { 'Katsuma Tanaka' => 'questbeat@gmail.com' }
  s.source = { :git => 'https://github.com/dtorres/QBImagePickerController.git', :commit => 'c141650825159a06ce1ae8dfbc63d6380f03c8a2' }
  s.frameworks = 'AssetsLibrary'
  s.platform = :ios
  s.source_files = 'QBImagePickerController/Classes/*.{h,m}'
  s.resources = 'QBImagePickerController/Classes/QBImagePickerController.bundle'
end
