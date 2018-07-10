#
# Be sure to run `pod lib lint XYGCDTimer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XYGCDTimer'
  s.version          = '1.0.0'
  s.summary          = 'XYGCDTimer is an accurate timer in iOS developer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    XYGCDTimer is an accurate timer in iOS developer, you can use it easily.
                       DESC

    s.homepage         = 'https://github.com/XYXiaoYuan/XYGCDTimer'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Bruceyuan' => '664995775@qq.com' }
    s.source           = { :git => 'https://github.com/XYXiaoYuan/XYGCDTimer.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '8.0'

    s.source_files = 'XYGCDTimer/Classes/XYGCDTimer.{h,m}'
end
