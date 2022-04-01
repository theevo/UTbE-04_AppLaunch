//
//  TestingAppDelegate.swift
//  AppLaunchTests
//
//  Created by Theo Vora on 4/1/22.
//

import UIKit

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(">> TESTINGappdelegate didFinishLaunchingWithOptions")
        return true
    }
}

