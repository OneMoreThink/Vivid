//
//  AppDelegate.swift
//  Vivid
//
//  Created by 이종선 on 8/21/25.
//

import SwiftUI
import FirebaseCore
import GoogleMobileAds


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      // Use Firebase library to configure APIs.
      FirebaseApp.configure()

      // Initialize the Google Mobile Ads SDK.
      MobileAds.shared.start()

    return true
  }
}
