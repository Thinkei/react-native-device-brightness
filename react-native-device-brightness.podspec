require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = package["author"]

  s.homepage     = "https://github.com/Calvin-Huang/react-native-device-brightness"

  s.license      = "MIT"
  s.ios.deployment_target = "9.0"
  s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/Calvin-Huang/react-native-device-brightness", :branch => "master" }

 s.source_files  = "RNDeviceBrightness/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
