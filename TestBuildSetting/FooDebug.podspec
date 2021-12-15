Pod::Spec.new do |s|
  s.name             = 'FooDebug'
  s.version          = '1.0.9'
  s.summary          = 'QB用到的第三方库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://git.code.oa.com/QQBrowser_iOS/QBThirdparty'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'szrexzhu' => 'rexzhu@tencent.com' }
  s.source           = { :git => 'http://git.code.oa.com/QQBrowser_iOS/QBThirdparty.git', :tag => "v#{s.version.to_s}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.libraries = 'xml2', 'c++', 'bz2'
  s.vendored_libraries = 'libTestDummy.a'
  s.vendored_frameworks = 'testexter/TestExternalDMLib.framework'
#  s.dependency 'Flutter'
#  s.dependency 'path_provider'
#  s.dependency 'sqflite'
  s.dependency 'Flutter'
end
