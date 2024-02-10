#
# Be sure to run `pod lib lint Wendy.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Wendy-Reader-CoreData'
  s.version          = '0.0.1'
  s.swift_version    = '5.0'
  s.summary          = 'CoreData reader for Wendy.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Reader for Wendy, https://github.com/levibostian/Wendy-iOS, that uses CoreData to store tasks.

Note: It's highly recommended to read the documentation before use. This project is meant to help with migrating Wendy from older versions. This project is not updated as often as Wendy. 
                       DESC

  s.homepage         = 'https://github.com/levibostian/Wendy-iOS-Reader-CoreData'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Levi Bostian' => 'levi.bostian@gmail.com' }
  s.source           = { :git => 'https://github.com/levibostian/Wendy-iOS-Reader-CoreData.git', :tag => s.version.to_s }
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }

  s.ios.deployment_target = '11.0'

  s.source_files = 'Wendy/Classes/**/*'  
  s.resources = 'Wendy/Assets/**/*'

# I may run some bash scripts here in the future for running after the cocoapod is installed, but for now I will give the user the option of running it manually for privacy.
#  def s.post_install(target)
#    // TODO run bash script to install templates.
#  end

  s.dependency 'Wendy', '~> 5.1'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'CoreData'
end
