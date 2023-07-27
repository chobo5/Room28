# Uncomment the next line to define a global platform for your project
platform :ios, '12.0'

target 'Room28' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Room28

pod 'FirebaseFirestore'
pod 'FirebaseFirestoreSwift'
pod 'Kingfisher', '~> 7.0'
pod 'Alamofire' , '5.1'
pod 'SwiftSoup'

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
               end
          end
   end
end
end
