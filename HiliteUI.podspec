#
# Be sure to run `pod lib lint HiliteUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HiliteUI'
  s.version          = '0.1.16-alpha'
  s.summary          = 'HiliteSDK UI module.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Provides UI classes for HiliteSDK
                       DESC

  s.homepage         = 'https://github.com/betacamp/HiliteUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Preston Pope' => 'prestonwpope@gmail.com' }
  s.source           = { :git => 'https://github.com/betacamp/HiliteUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'HiliteUI/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HiliteUI' => ['HiliteUI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.dependency "HiliteCore", "~> 0.1.20-alpha"
end
