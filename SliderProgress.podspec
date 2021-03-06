#
# Be sure to run `pod lib lint sliderdismissanimation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SliderProgress'
  s.version          = '0.2.1'
  s.summary          = 'Swipe to dismiss progress animation'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
An animation kit for some clean swipe to dismiss features. The method will create the animation and dismiss when you have reached a cetain offset. The view can be customised for colour and also how far you would like the user to swipe upwards until the view dismisses.
                       DESC

  s.homepage         = 'https://github.com/lvh1g15/sliderProgress'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lvh1g15' => 'landon2008@hotmail.com' }
  s.source           = { :git => 'https://github.com/lvh1g15/sliderProgress.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'sliderdismissanimation/Classes/**/*'
  
  # s.resource_bundles = {
  #   'sliderdismissanimation' => ['sliderdismissanimation/Assets/*.png']
  # }

  #s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'SnapKit', '~> 3.0'
end
