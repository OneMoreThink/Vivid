//
//  BannerAdView.swift
//  Vivid
//
//  Created by 이종선 on 9/16/25.
//

import GoogleMobileAds
import SwiftUI

struct BannerViewContainer: UIViewRepresentable {
  typealias UIViewType = BannerView
  let adSize: AdSize

  init(_ adSize: AdSize) {
    self.adSize = adSize
  }

  func makeUIView(context: Context) -> BannerView {
    let banner = BannerView(adSize: adSize)
    // 하단 배너 광고 : ca-app-pub-3370273881965139/7272515895
    // [START load_ad]
    banner.adUnitID = "ca-app-pub-3940256099942544/2435281174" // test ad
    banner.load(Request())
    // [END load_ad]
    // [START set_delegate]
    banner.delegate = context.coordinator
    // [END set_delegate]
    return banner
  }

  func updateUIView(_ uiView: BannerView, context: Context) {}

  func makeCoordinator() -> BannerCoordinator {
    return BannerCoordinator(self)
  }
  // [END create_banner_view]

  class BannerCoordinator: NSObject, BannerViewDelegate {

    let parent: BannerViewContainer

    init(_ parent: BannerViewContainer) {
      self.parent = parent
    }

    // MARK: - GADBannerViewDelegate methods

    func bannerViewDidReceiveAd(_ bannerView: BannerView) {
      print("DID RECEIVE AD.")
    }

    func bannerView(_ bannerView: BannerView, didFailToReceiveAdWithError error: Error) {
      print("FAILED TO RECEIVE AD: \(error.localizedDescription)")
    }
  }
}
