Pod::Spec.new do |s|
  s.name             = 'MaiAnhVuPS1'
  s.version          = '1.0.0'
  s.summary          = 'CS3217 PS1'

  s.homepage         = 'https://www.maianhvu.com/'
  s.description      = <<-DESC
Basic Abstract Data Structures.
                       DESC

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mai Anh Vu' => 'me@maianhvu.com' }
  s.source           = { :git => 'https://github.com/cs3217/2018-ps1-maianhvu.git', :tag => 'v1.0.1' }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'
  s.source_files = 'DataStructures/DS*.swift'
end
