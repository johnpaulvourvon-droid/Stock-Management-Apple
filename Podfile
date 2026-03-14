platform :ios, '15.5'

source 'https://cdn.cocoapods.org/'
source 'https://github.com/gonativeio/gonative-ios-specs.git'

require_relative './plugins.rb'

target 'StockManagement' do
  use_frameworks!

  pod 'GoNativeCore'
  pod 'MedianIcons'
  pod 'SSZipArchive', '~> 2.6.0'
  
  use_plugins!

  target 'MedianIOSTests' do
    inherit! :search_paths
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
    end
  end
end
