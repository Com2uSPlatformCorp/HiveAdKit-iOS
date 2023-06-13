Pod::Spec.new do |spec|
  spec.name         = "HiveAdKit_ADOP"
  spec.version      = "1.4.2-beta1"
  spec.summary      = "HiveAdKit_ADOP optional framework"
  spec.description  = "HiveAdKit_ADOP to use ad service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "11.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveAdKit-iOS/releases/download/#{spec.version}/Hive_AdKit_iOS_ADOPv#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_AdKit_iOS_ADOPv#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/AdKit.framework"

  spec.dependency 'BidmadSDK', '6.2.0'
  spec.dependency 'OpenBiddingHelper', '6.2.0'
  spec.dependency 'BidmadAdapterDynamic', '6.2.0'
end
