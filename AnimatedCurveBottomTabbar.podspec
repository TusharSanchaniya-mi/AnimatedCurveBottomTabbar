Pod::Spec.new do |s|
  s.name             = 'AnimatedCurveBottomTabbar'
  s.version          = '1.0.2'
  s.summary          = 'Customizable SwiftUI tab bar with smooth animations for modern, interactive navigation in your apps.'

  s.description      = <<-DESC
                        AnimatedCurveBottomTabbar is a sleek, customizable SwiftUI tab bar with smooth animations for enhanced navigation.
                      DESC

  s.homepage         = 'https://github.com/TusharSanchaniya-mi/AnimatedCurveBottomTabbar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tushar Sanchaniya' => 'tushar.sanchaniya@mindinventory.com' }
  s.source           = { :git => 'https://github.com/TusharSanchaniya-mi/AnimatedCurveBottomTabbar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://github.com/TusharSanchaniya-mi'

  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'
  s.source_files = 'AnimatedCurveBottomTabbar/Classes/**/*'
end
