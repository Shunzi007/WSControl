Pod::Spec.new do |s|
  s.name     = 'WSControl'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'Encapsulated UIButton/UIAlertView/UIActionSheet with Block.'
  s.homepage = 'https://github.com/Shunzi007/WSControl'
  s.social_media_url = 'http://weibo.com/2834854683/profile'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.authors  = { '王顺' => '360752546@qq.com' }
  s.source   = { :git => 'https://github.com/Shunzi007/WSControl.git', :tag => s.version}
  s.requires_arc = true

  s.platform = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.public_header_files = 'WSControl/*.h'
  s.source_files = 'WSControl/WSControl.h'
  s.frameworks = 'Foundation', 'UIKit'

  s.subspec 'WSButton' do |ss|
    ss.source_files = 'WSControl/WSButton.{h,m}'
  end

  s.subspec 'WSAlertView' do |ss|
    ss.source_files = 'WSControl/WSAlertView.{h,m}'
  end

  s.subspec 'WSActionSheet' do |ss|
    ss.source_files = 'WSControl/WSActionSheet.{h,m}'
  end

end
