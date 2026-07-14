Pod::Spec.new do |s|
  s.name         = 'SurelyWebRTC'
  s.version      = '144.7559.10'
  s.summary      = 'Prebuilt Google WebRTC XCFramework for iOS.'

  s.description  = <<-DESC
    A prebuilt Google WebRTC XCFramework for iOS, built from the official
    WebRTC source version 144.7559.10 and packaged for easy integration
    with CocoaPods. No functional modifications are made to the upstream
    WebRTC implementation.
  DESC

  s.homepage     = 'https://github.com/SurelyDev/SurelyWebRTC'
  s.license      = { :type => 'BSD-3-Clause', :file => 'LICENSE' }
  s.author       = { 'SurelyDev' => 'surelylc@gmail.com' }

  s.platform     = :ios, '13.0'

  s.source       = {
    :git => 'https://github.com/SurelyDev/SurelyWebRTC.git',
    :tag => s.version.to_s
  }

  s.vendored_frameworks = 'WebRTC.xcframework'

  s.frameworks = [
    'AVFoundation',
    'AudioToolbox',
    'CoreAudio',
    'CoreMedia',
    'CoreVideo',
    'Foundation',
    'Metal',
    'Network',
    'Security',
    'UIKit',
    'VideoToolbox'
  ]

  s.libraries = [
    'c++',
    'sqlite3'
  ]

  s.requires_arc = true
end
