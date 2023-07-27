//
//  AppDelegate.swift
//  Room28
//
//  Created by 원준연 on 2023/06/08.
//

import UIKit
import FirebaseCore
import Kingfisher

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        NetworkCheck.shared.startMonitoring()
        
        Thread.sleep(forTimeInterval: 0.6)
        
        
        // Override point for customization after application launch.
        //Firebase 초기화
        FirebaseApp.configure()
        // 디스크 캐시 최대 용량 설정 (100MB)
        var diskCache = ImageCache.default.diskStorage.config
        diskCache.sizeLimit = 100 * 1024 * 1024 // 100MB
        
        // 메모리 캐시 최대 용량 설정 (50MB)
        var memoryCache = ImageCache.default.memoryStorage.config
        memoryCache.totalCostLimit = 50 * 1024 * 1024 // 50MB
        
//        모든 캐시 삭제
//        ImageCache.default.clearMemoryCache()
//        ImageCache.default.clearDiskCache { print("done clearDiskCache") }
        
        //만료된 캐시만 삭제
        ImageCache.default.cleanExpiredMemoryCache()
        ImageCache.default.cleanExpiredDiskCache { print("done cleanExpiredDiskCache") }
        
        //현재 캐시 크기 확인
        ImageCache.default.calculateDiskStorageSize { result in
            switch result {
            case .success(let size):
              print("disk cache size = \(Double(size) / 1024 / 1024)")
            case .failure(let error):
              print(error)
            }
          }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        
        // 세로방향 고정
        return UIInterfaceOrientationMask.portrait
    }

}

