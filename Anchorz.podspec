#
# Be sure to run `pod lib lint Anchorz.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Anchorz'
  s.version          = '0.1.0'
  s.summary          = 'A tiny library with UIKit constraints helpers'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
A tiny library with UIKit constraints helpers
                       DESC

  s.homepage         = 'https://github.com/michaelversus/Anchorz'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Michalis Karagiorgos' => 'mk@mikdev.eu' }
  s.source           = { :git => 'https://github.com/michaelversus/Anchorz.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = "4.0"

  s.source_files = 'Classes/**/*.{h,m,swift}'
  
  # s.resource_bundles = {
  #   'Anchorz' => ['Anchorz/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
