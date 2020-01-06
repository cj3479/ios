# Uncomment this line to define a global platform for your project
platform :ios, "10.0"
#use_frameworks!
project 'TestBase/TestBase.xcodeproj'
source "http://git.code.oa.com/QQBrowser_iOS/QBPodSource.git"
source "http://git.code.oa.com/hippy/hippy_pod_source.git"
source "https://github.com/cj3479/testPods.git"
#source "http://git.code.oa.com/QBFeedS_SDK_iOS/TBS.git"
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

#def qbTBS_shared
#    pod "TBS11", :git => 'http://git.code.oa.com/QQBrowser_iOS/iOS_TBS_SDK_Src.git', :branch => 'mtt/feature/9.8_optimized_launch'
#end
#def qbFeedsTBS_shared
#    pod "Feeds_TBS", :git => 'http://git.code.oa.com/QBFeedS_SDK_iOS/TBS.git', :branch => 'master'
#end
def qbFeedsTBS_shared
    pod "Feeds_TBS",'~> 1.0.0'
end
def qbLJ_shared
    pod "testlj", :git => 'https://github.com/cj3479/testPods.git', :branch => 'develop'
end
def qbLJ_shared
    pod "testlj", :git => 'https://github.com/cj3479/testPods.git', :branch => 'develop'
end

target 'TestBase' do
#  qbRQD_shared
#  qbZipArchive_shared
  pod 'SDWebImage', '~> 4.3.2'
  source 'https://github.com/CocoaPods/Specs.git'
  pod 'AFNetworking', '~> 2.5'
#  pod 'testCj123Pods', '~> 0.1.4'
  qbTBS_shared
#  qbLJ_shared
#  qbFeedsTBS_shared
#  pod 'LzmaSDK-ObjC', :inhibit_warnings => true
end

