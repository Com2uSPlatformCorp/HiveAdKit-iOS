Pod::Spec.new do |spec|
  spec.name         = "HiveAdKit_DARO"
  spec.version      = "1.6.0-alpha1"
  spec.summary      = "HiveAdKit_DARO optional framework"
  spec.description  = "HiveAdKit_DARO to use ad service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "14.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveAdKit-iOS/releases/download/#{spec.version}/Hive_AdKit_iOS_DARO_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_AdKit_iOS_DARO_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/AdKit.xcframework"

  spec.dependency "DaroAds", "2.0.1"
  spec.dependency "DaroCMPSDK", "0.1.0"

end
