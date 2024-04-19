//
//  AppDelegate.swift
//  ManageStudent
//
//  Created by tri minh on 1/4/19.
//  Copyright © 2019 tri minh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         configureNavigationTabBar()
        if UserDefaults.standard.string(forKey: "TOKEN") != nil {
            MSSwitchViewManager.shareInstance.switchTabbarView()
        }
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
    
    func switchTabbar() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tabbarView = storyboard.instantiateViewController(withIdentifier:"TabbarView")
        self.window?.rootViewController = tabbarView
    }
    
    func switchCourseVC() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let courseVC = storyboard.instantiateViewController(withIdentifier:"courseVC")
        self.window?.rootViewController = courseVC
    }
    
    func switchCalendarVC() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let calendarVC = storyboard.instantiateViewController(withIdentifier:"calendarVC")
        self.window?.rootViewController = calendarVC
    }
    
    func switchContactVC() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let contactVC = storyboard.instantiateViewController(withIdentifier:"contactVC")
        self.window?.rootViewController = contactVC
    }


}

extension AppDelegate {
    
    fileprivate func configureNavigationTabBar() {
        //transparent background
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = true
        
        let shadow = NSShadow()
        shadow.shadowOffset = CGSize(width: 0, height: 2)
        shadow.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
        
        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.shadow: shadow,
        ]
    }
}

