//
//  AppDelegate.swift
//  FlightsApp
//
//  Created by Татьяна Севостьянова on 10.03.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow()
        self.window = window
        
        window.rootViewController = UINavigationController(rootViewController: FlightsViewController())
        window.makeKeyAndVisible()
        
        return true
    }
}

