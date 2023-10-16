Pod::Spec.new do |spec|
  spec.name         = "HiveAdKit_ADOP"
  spec.version      = "1.4.4"
  spec.summary      = "HiveAdKit_ADOP optional framework"
  spec.description  = "HiveAdKit_ADOP to use ad service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "12.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveAdKit-iOS/releases/download/#{spec.version}/Hive_AdKit_iOS_ADOP_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_AdKit_iOS_ADOP_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/AdKit.framework"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

  spec.dependency 'BidmadSDK', '6.3.2'
  spec.dependency 'OpenBiddingHelper', '6.3.2'
  spec.dependency 'BidmadAdapterDynamic', '6.3.1'
end
