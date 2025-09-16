//
//  BannerContentView.swift
//  Vivid
//
//  Created by 이종선 on 9/16/25.
//

import GoogleMobileAds
import SwiftUI

struct BannerContentView: View {

  var body: some View {
    /// 주어진 너비 사이즈에 맞게 높이가 결정된 광고 배너
    let currentDeviceWidthSize = UIScreen.main.bounds.width
    let adSize = currentOrientationAnchoredAdaptiveBanner(width: currentDeviceWidthSize)
    BannerViewContainer(adSize)
      .frame(width: adSize.size.width, height: adSize.size.height)
  }
}

struct BannerContentView_Previews: PreviewProvider {
  static var previews: some View {
    BannerContentView()
  }
}
