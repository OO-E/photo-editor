Pod::Spec.new do |s|
  s.name             = 'editorphoto'
  s.version          = '1.0.0'
  s.summary          = ''

  s.description      = ""

  s.homepage         = 'https://github.com/OO-E/photo-editor'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'aaaa' => 'aaaa@gmail.com' }
  s.source           = { :git => 'https://github.com/OO-E/photo-editor', :tag => s.version.to_s }
  s.swift_version    = '5.0'

  s.ios.deployment_target = '9.0'
  s.source_files = "iOSPhotoEditor/**/*.{swift}"
  s.exclude_files = ""
  s.resources = "iOSPhotoEditor/**/*.{png,jpeg,jpg,storyboard,xib,ttf}"

end
