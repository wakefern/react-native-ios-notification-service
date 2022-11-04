# react-native-ios-notification-service.podspec

require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-ios-notification-service"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-ios-notification-service
                   DESC
  s.homepage     = "https://github.com/Acoustic-Mobile-Push/React-Native"
  s.license      = "Copyright (c) 2019. Acoustic, L.P. All rights reserved"
  s.authors      = { "Support" => "support@acoustic.co" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/Acoustic-Mobile-Push/React-Native.git", :tag => "#{s.version}" }

  s.source_files = "ios/*.{h,m,swift}"
  s.vendored_frameworks = 'AcousticMobilePushNotification.xcframework'  
  s.requires_arc = true

  s.dependency "React"
end

