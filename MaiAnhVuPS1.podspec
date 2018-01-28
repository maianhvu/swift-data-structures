Pod::Spec.new do |s|
  s.name             = 'MaiAnhVuPS1'
  s.version          = '0.1.0'
  s.summary          = 'CS3217 PS1'

  s.description      = <<-DESC
Basic Abstract Data Structures.
                       DESC

  s.homepage         = 'https://github.com/cs3217/2018-ps1-maianhvu'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mai Anh Vu' => 'me@maianhvu.com' }
  s.source           = { :git => 'https://github.com/cs3217/2018-ps1-maianhvu', :branch => 'master' }

  s.ios.deployment_target = '10.0'
  s.source_files = [
    'DataStructures/Stack.swift',
    'DataStructures/Queue.swift'
  ]

end
