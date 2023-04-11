platform :ios, '11.0'
use_frameworks!

target 'eosswift' do
  pod 'RxSwift',    '~> 4.0'
#  pod 'RxCocoa',    '~> 4.0'
  pod 'BigInt', '~> 5.2.0'

  target 'eosswiftTests' do
    pod 'RxBlocking', '~> 4.0'
    pod 'RxTest',     '~> 4.0'
  end
end

post_install do |installer|
    installer.generated_projects.each do |project|
      project.targets.each do |target|
        target.build_configurations.each do |config|
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
        end
      end
    end
end


