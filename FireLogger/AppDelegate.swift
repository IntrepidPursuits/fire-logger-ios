//
//  AppDelegate.swift
//  FireLogger
//
//  Created by Logan Wright on 2/17/16.
//  Copyright © 2016 Intrepid. All rights reserved.
//

import UIKit

let FIREBASE_NAME: String! = "monet-logging" // Set a name to test

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let logger = LogFactory(FIREBASE_NAME)
        let testLogger = logger.loggerWithIdentifier("TEST-ALT")
        "i am a test log of individual words"
            .componentsSeparatedByString(" ")
            .forEach(testLogger)
        return true
    }
    
}

