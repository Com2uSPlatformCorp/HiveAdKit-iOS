Pod::Spec.new do |spec|
  spec.name         = "HiveAdKit_ADOP"
  spec.version      = "1.5.3-beta2"
  spec.summary      = "HiveAdKit_ADOP optional framework"
  spec.description  = "HiveAdKit_ADOP to use ad service with Hive SDK"
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/AdKit.xcframework"
  spec.dependency 'HiveAdKit_ADOP_PrivacyInfo', "#{spec.version}"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

  spec.dependency "BidmadSDK", "6.12.4"
  spec.dependency "OpenBiddingHelper", "6.12.3"
  spec.dependency "BidmadAdFitAdapter", "3.12.7.11.0"
  spec.dependency "BidmadAdmixerAdapter", "2.0.2.11.1"
  spec.dependency "BidmadAppLovinAdapter", "13.3.1.11.0"
  spec.dependency "BidmadFyberAdapter", "8.3.7.11.0"
  spec.dependency "BidmadGoogleAdManagerAdapter", "12.6.0.11.0"
  spec.dependency "BidmadGoogleAdMobAdapter", "12.6.0.11.0"
  spec.dependency "BidmadMobwithAdapter", "1.0.0.11.2"
  spec.dependency "BidmadORTBAdapter", "1.0.0.11.2"
  spec.dependency "BidmadPangleAdapter", "7.2.0.5.11.0"
  spec.dependency "BidmadTaboolaAdapter", "3.8.33.11.2"
  spec.dependency "BidmadTeadsAdapter", "5.2.0.11.2"
  spec.dependency "BidmadUnityAdsAdapter", "4.15.0.11.0"
  spec.dependency "BidmadVungleAdapter", "7.5.1.11.0"
  spec.dependency "BidmadPartners/AdMobBidding", "1.0.7"

end
