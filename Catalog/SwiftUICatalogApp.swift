//
//  CatalogApp.swift
//  Catalog
//
//  Created by 13an on 2023/07/08.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    var hapticEngine: HapticEngine?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        hapticEngine?.prepareHaptics()
    }
}

@main
struct MyNameApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    let hapticEngine = HapticEngine() // 共有の HapticEngine インスタンスを追加
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(hapticEngine)
                .onAppear {
                    appDelegate.hapticEngine = hapticEngine
                }
        }
    }
}
