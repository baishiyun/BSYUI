Pod::Spec.new do |s|
  s.name         = "BSYUI" 
  s.version      = "1.1.2"     
  s.license      = "MIT"       
  s.summary      = "有没有希望写代码的时候像Masonry语法那样舒服简单，使用了连续的.语法。一直点点就可以了！BSYUI值一套针对常用控件的封装，支持链式编程，只需要继承自BSYUI中的控件，就可以实现啦！现在已经支持Cocoapods，希望对大家开发有帮助，也希望支持Star和Fork"

  s.homepage     = "https://github.com/baishiyun/BSYUI" # 你的主页
  s.source       = { :git => "https://github.com/baishiyun/BSYUI.git", :tag => "#{s.version}" }
  s.source_files = "BSYUI/*.{h,m}"
  s.requires_arc = true 
  s.platform     = :ios, "7.0" 
  s.frameworks   = "UIKit", "Foundation"
  s.author             = {"白仕云" => "baishiyun@163.com" } 
  s.social_media_url   = "https://github.com/baishiyun" 
end