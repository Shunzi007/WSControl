Pod::Spec.new do |s|

  s.name         = "WSControl"
  s.version      = "1.1.1"
  s.summary      = "Encapsulated UIButton/UIAlertView/UIActionSheet/UISegmentedControl with Block."

  s.homepage     = "https://github.com/Shunzi007/WSControl"
  s.license      = "MIT"
  

  s.author             = { "王顺" => "360752546@qq.com" }
  s.ios.deployment_target = "5.0"
  
  s.source       = { :git => "https://github.com/Shunzi007/WSControl.git", :tag => s.version.to_s }

  s.source_files  = "WSControl/*.{h,m}"
  

  s.framework  = "UIKit"

end
