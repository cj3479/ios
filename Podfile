# Uncomment this line to define a global platform for your project
platform :ios, "10.0"
project 'TestBase/TestBase.xcodeproj'
source "http://git.code.oa.com/QQBrowser_iOS/QBPodSource.git"
source "http://git.code.oa.com/hippy/hippy_pod_source.git"
source "https://github.com/cj3479/testPods.git"
$qbRQD_version = "1.0.3"
$qbZipArchive_version = "1.0.4"
def qbZipArchive_shared
  pod "QBZipArchive", "#{$qbZipArchive_version}"
end

def qbRQD_shared
#  if ENV["podsrc"] && $qbThirdpartyLibrary_use_local == 1
#    pod "RQD", :path => "#{$qbRQD_local_path}"
#  else
    pod "RQD", "#{$qbRQD_version}"
#  end
end
target 'TestBase' do
  qbRQD_shared
  qbZipArchive_shared
  pod 'SDWebImage', '~> 4.3.2'
  source 'https://github.com/CocoaPods/Specs.git'
  pod 'AFNetworking', '~> 2.5'
#  pod 'testCj123Pods'
end

