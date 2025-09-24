Pod::Spec.new do |spec|
  spec.name         = "HiveAdKit_ADOP_PrivacyInfo"
  spec.version      = "1.5.3-beta5"
  spec.summary      = "HiveAdKit_ADOP_PrivacyInfo optional PrivacyInfo"
  spec.description  = "HiveAdKit_ADOP_PrivacyInfo to use ad service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "13.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveAdKit-iOS/releases/download/#{spec.version}/Hive_AdKit_iOS_ADOP_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_AdKit_iOS_ADOP_v#{spec.version}"
  spec.resource_bundles = {'HiveAdKitPrivacyInfo' => ["#{$vendored_frameworks_path}/AdKit.xcframework/ios-arm64/AdKit.framework/PrivacyInfo.xcprivacy"]}
end
