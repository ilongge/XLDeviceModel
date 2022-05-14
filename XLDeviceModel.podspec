
Pod::Spec.new do |s|
    s.name             = 'XLDeviceModel'
    s.version          = '0.0.1'
    s.summary          = 'A short description of XLDeviceModel.'
    
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC
    
    s.homepage         = 'https://gitee.com/ilongge/xldevicemodel'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'ilongge' => '1015820857@qq.com' }
    s.source           = { :git => 'https://gitee.com/ilongge/xldevicemodel.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    s.source_files = 'XLDeviceModel/Classes/**/*'
    s.public_header_files = 'Pod/Classes/**/*.h'
    s.resource_bundle = {'XLDeviceModel' => [ 'XLDeviceModel/**/*.{json}' ]}
end
