Pod::Spec.new do |s|
  s.name         = 'YUGPUImageHighPassSkinSmoothing'
  s.version      = '1.3'
  s.author       = { 'YuAo' => 'me@imyuao.com' }
  s.homepage     = 'https://github.com/YuAo/YUGPUImageHighPassSkinSmoothing'
  s.summary      = 'An implementation of High Pass Skin Smoothing using GPUImage'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.source       = {:git => 'https://github.com/YuAo/YUGPUImageHighPassSkinSmoothing.git', :tag => '1.3'}
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.source_files = 'Sources/**/*.{h,m}'
  s.dependency 'GPUImage'
end
