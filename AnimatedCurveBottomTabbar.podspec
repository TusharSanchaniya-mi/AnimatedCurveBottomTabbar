#
# Be sure to run `pod lib lint AnimatedCurveBottomTabbar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnimatedCurveBottomTabbar'
  s.version          = '1.0.0'
  s.summary          = 'A customizable SwiftUI bottom tab bar component with smooth animations, 
                        offering a modern and interactive navigation experience for your SwiftUI applications.'

  s.description      = <<-DESC
                        The AnimatedCurveBottom Tab is a customizable SwiftUI component that provides a sleek and 
                        modern bottom tab bar interface with smooth animation. This component is designed to enhance 
                        the user experience by offering a visually appealing way to navigate between 
                        different sections or views within your SwiftUI application
                      DESC

  s.homepage         = 'https://github.com/TusharSanchaniya-mi/AnimatedCurveBottomTabbar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tushar Sanchaniya' => 'tushar.sanchaniya@mindinventory.com' }
  s.source           = { :git => 'https://github.com/TusharSanchaniya-mi/AnimatedCurveBottomTabbar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://github.com/TusharSanchaniya-mi'

  s.ios.deployment_target = '15.0'

  s.source_files = 'AnimatedCurveBottomTabbar/Classes/**/*'
end
