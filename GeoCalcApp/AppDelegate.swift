//
//  AppDelegate.swift
//  GeoCalcApp
//
//  Created by Brian on 5/27/18.
//  Copyright © 2018 Brian. All rights reserved.
//

import UIKit

let BACKGROUND_COLOR1 = UIColor.lightGray
let BACKGROUND_COLOR2 = UIColor.magenta
let FOREGROUND_COLOR1 = UIColor.purple
let FOREGROUND_COLOR2 = UIColor.blue
let FOREGROUND_COLOR3 = UIColor.red

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        application.statusBarStyle = UIStatusBarStyle.lightContent
        
        let navAppearance = UINavigationBar.appearance()
        navAppearance.barTintColor = BACKGROUND_COLOR1
        navAppearance.tintColor = FOREGROUND_COLOR1
        navAppearance.isTranslucent = false
        //navAppearance.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

