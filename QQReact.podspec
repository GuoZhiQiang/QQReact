#
# Be sure to run `pod lib lint QQReact.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    rnversion = '0.62.2'
    s.name             = 'QQReact'
    s.version          = '0.1.0'
    s.summary          = 'A short description of QQReact.'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!

    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC

    s.homepage         = 'https://github.com/GuoZhiQiang/QQReact'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'GuoZhiQiang' => '1029549847@qq.com' }
    s.source           = { :git => 'https://github.com/GuoZhiQiang/QQReact.git', :tag => s.version.to_s }
    s.ios.deployment_target = '9.0'

    s.dependency "React", rnversion
    s.dependency "React-Core", rnversion
    s.dependency "ReactCommon", rnversion
    s.dependency "React-CoreModules", rnversion
    s.dependency "React-cxxreact", rnversion
    s.dependency "React-jsi", rnversion
    s.dependency "React-jsiexecutor", rnversion
    s.dependency "React-jsinspector", rnversion
    s.dependency "React-RCTActionSheet", rnversion
    s.dependency "React-RCTAnimation", rnversion
    s.dependency "React-RCTBlob", rnversion
    s.dependency "React-RCTImage", rnversion
    s.dependency "React-RCTLinking", rnversion
    s.dependency "React-RCTNetwork", rnversion
    s.dependency "React-RCTSettings", rnversion
    s.dependency "React-RCTText", rnversion
    s.dependency "React-RCTVibration", rnversion
    s.dependency "Yoga", rnversion
    s.dependency "FBLazyVector", rnversion
    s.dependency "FBReactNativeSpec", rnversion
    s.dependency "RCTRequired", rnversion
    s.dependency "RCTTypeSafety", rnversion
    s.dependency "DoubleConversion", '1.1.6'
    s.dependency "glog", '0.3.5'
    s.dependency "Folly", '2018.10.22.00'

    # s.resource_bundles = {
    #   'QQReact' => ['QQReact/Assets/*.png']
    # }

    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
