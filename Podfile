# Uncomment the next line to define a global platform for your project
platform :ios, '15.5'

# These MUST be the full URLs to the spec repositories
source 'https://github.com'
source 'https://github.com'

require_relative './plugins.rb'

target 'GoNativeIOS' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for GonativeIO
  pod 'GoNativeCore'
  pod 'MedianIcons'
  pod 'SSZipArchive', '~> 2.6.0'
  
  use_plugins!

  target 'MedianIOSTests' do
    inherit! :search_paths
    # Pods for testing
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
