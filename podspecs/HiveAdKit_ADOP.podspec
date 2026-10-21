Pod::Spec.new do |spec|
  spec.name         = "HiveAdKit_ADOP"
  spec.version      = "1.6.0-alpha1"
  spec.summary      = "HiveAdKit_ADOP optional framework"
  spec.description  = "HiveAdKit_ADOP to use ad service with Hive SDK"
  spec.homepage     = "https://developers.withhive.com/"
  spec.license      = {
    :type => 'Apache-2.0', 
    :file => "#{Dir.pwd}/../../LICENSE"
  }

  spec.author       = { "Com2usPlatrformCorp" => "pc@com2us.com" }
  spec.platform     = :ios, "14.0"
  spec.swift_version = "5.0"

  spec.source       = { 
    :http => "https://github.com/Com2uSPlatformCorp/HiveAdKit-iOS/releases/download/#{spec.version}/Hive_AdKit_iOS_ADOP_v#{spec.version}.zip"
  }

  $vendored_frameworks_path = "Hive_AdKit_iOS_ADOP_v#{spec.version}"
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/AdKit.xcframework"
  spec.dependency 'HiveAdKit_ADOP_PrivacyInfo', "#{spec.version}"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

  spec.dependency "BidmadSDK", "7.1.0"
  spec.dependency "BidmadGoogleGDPRAdapter", "7.1.0"
  spec.dependency "OpenBiddingHelper", "7.1.0"
  spec.dependency "BidmadAdFitAdapter", "3.18.3.15.0"
  spec.dependency "BidmadAppLovinAdapter", "13.6.2.15.0"
  spec.dependency "BidmadFyberAdapter", "8.4.6.15.0"
  spec.dependency "BidmadGoogleAdManagerAdapter", "13.2.0.15.0"
  spec.dependency "BidmadGoogleAdMobAdapter", "13.2.0.15.0"
  spec.dependency "BidmadMobwithAdapter", "2.0.0.15.0"
  spec.dependency "BidmadORTBAdapter", "1.0.0.15.0"
  spec.dependency "BidmadPangleAdapter", "7.9.0.8.15.0"
  spec.dependency "BidmadPremiumAdsGoogleAdapter", "1.0.6.15.0"
  spec.dependency "BidmadTaboolaAdapter", "3.9.12.15.0"
  spec.dependency "BidmadTeadsAdapter", "6.1.0.15.0"
  spec.dependency "BidmadUnityAdsAdapter", "4.17.0.15.0"
  spec.dependency "BidmadVungleAdapter", "7.7.2.15.0"
end
