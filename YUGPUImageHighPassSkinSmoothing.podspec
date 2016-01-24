Pod::Spec.new do |s|
  s.name         = 'YUGPUImageHighPassSkinSmoothing'
  s.version      = '1.0'
  s.author       = { 'YuAo' => 'me@imyuao.com' }
  s.homepage     = 'https://github.com/YuAo/YUGPUImageHighPassSkinSmoothing'
  s.summary      = 'An implementation of High Pass Skin Smoothing using GPUImage'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.source       = {:git => 'https://github.com/YuAo/YUGPUImageHighPassSkinSmoothing.git', :tag => '1.0'}
  s.requires_arc = true
  s.ios.deployment_target = '7.0'
  s.source_files = 'Sources/**/*.{h,m}'
  s.resources    = 'Sources/**/*.{png,cikernel}'
  s.dependency 'GPUImage'
end
