Pod::Spec.new do |s|
  s.name      = 'BreweryDB'
  s.version   = '0.1.7'
  s.license   = 'MIT'
  s.summary   = 'iOS and OS X SDK for BreweryDB'
  s.homepage  = 'https://github.com/bdbergeron/BreweryDB'
  s.authors   = { 'Bradley David Bergeron' => 'brad@bradbergeron.com' }
  s.source    = { :git => 'https://github.com/DoubleNode/BreweryDB.git', :tag => s.version.to_s }
  s.requires_arc = true
  
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  
  s.source_files        = 'BreweryDB/*.{h,m}'  
  s.public_header_files = 'BreweryDB/*.h'
  
  s.dependency 'AFNetworking', '~> 2.6.0'
end
