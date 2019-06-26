Pod::Spec.new do |s|
  s.name             = 'Paddings'
  s.version          = '0.0.1'
  s.summary          = 'UIView Paddings'
  s.homepage         = 'https://github.com/vysotskiyserhiy/Paddings'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Serge Vysotsky' => 'vysotskiyserhiy@gmail.com' }
  s.source           = { :git => 'https://github.com/vysotskiyserhiy/Paddings.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Paddings/Paddings.swift'
  s.frameworks = 'UIKit'
end
