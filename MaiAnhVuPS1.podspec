#
# Be sure to run `pod lib lint MaiAnhVuPS1.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MaiAnhVuPS1'
  s.version          = '1.0.4'
  s.summary          = 'CS3217 Abstract Data Structures'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Swift Abstract Data Structures.
                       DESC

  s.homepage         = 'https://github.com/maianhvu/swift-data-structures'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'maianhvu' => 'me@maianhvu.com' }
  s.source           = { :git => 'https://github.com/maianhvu/swift-data-structures.git', :tag => 'v' + s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'
  s.source_files = 'MaiAnhVuPS1/Classes/**/*'

  # s.resource_bundles = {
  #   'MaiAnhVuPS1' => ['MaiAnhVuPS1/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
