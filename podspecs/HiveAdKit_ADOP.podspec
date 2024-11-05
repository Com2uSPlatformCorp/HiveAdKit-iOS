Pod::Spec.new do |spec|
  spec.name         = "HiveAdKit_ADOP"
  spec.version      = "1.5.1-beta1"
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
  spec.vendored_frameworks =  "#{$vendored_frameworks_path}/AdKit.xcframework"
  spec.dependency 'HiveAdKit_ADOP_PrivacyInfo', "#{spec.version}"

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

  # NECESSARY
  spec.dependency 'BidmadSDK', "6.11.0"
  spec.dependency 'OpenBiddingHelper', "6.11.0"
  spec.dependency 'BidmadGoogleAdMobAdapter', "11.10.0.10.0"
  spec.dependency 'BidmadGoogleAdManagerAdapter', "11.10.0.10.0"
  spec.dependency 'BidmadAppLovinAdapter', "13.0.0.10.0"
  spec.dependency 'BidmadUnityAdsAdapter', "4.12.3.10.0"
  spec.dependency 'BidmadPangleAdapter', "6.2.0.7.10.0"
  spec.dependency 'BidmadFyberAdapter', "8.3.2.10.0"
  spec.dependency 'BidmadVungleAdapter', "7.4.1.10.0"
  spec.dependency 'BidmadPubmaticAdapter', "3.2.0.10.0"
  spec.dependency 'BidmadAdpieAdapter', "1.6.1.10.0"
  spec.dependency 'BidmadAdPopcornAdapter', "2.6.5.10.0"
  spec.dependency 'BidmadPartners/AdMobBidding', "1.0.5"

  # OPTIONAL
  spec.dependency 'BidmadTeadsAdapter', "5.0.27.10.0"
  spec.dependency 'BidmadAtomAdapter', "1.0.0.10.0"
  spec.dependency 'BidmadAdFitAdapter', "3.12.7.10.0"
  spec.dependency 'BidmadIronSourceAdapter', "8.3.0.0.10.0"

end
