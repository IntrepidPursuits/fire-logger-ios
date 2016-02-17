Pod::Spec.new do |spec|
  spec.name         = 'FireLogger'
  spec.version      = '0.0.1'
  spec.license      = 'NO LICENSE'
  spec.homepage     = 'https://github.com/IntrepidPursuits/fire-loger-ios'
  spec.authors      = { 'ip' => 'dev@intrepid.io' }
  spec.summary      = 'Remote logger backed by firebase'
  spec.source       = { :git => 'https://github.com/IntrepidPursuits/fire-logger-ios.git', :tag => "#{spec.version}" }
  spec.source_files = 'FireLogger/Sources/**/*.{swift}'
  spec.ios.deployment_target = "8.0"
  spec.osx.deployment_target = "10.9"
  spec.requires_arc = true
  spec.dependency 'Firebase', '>= 2.5.0'
end
