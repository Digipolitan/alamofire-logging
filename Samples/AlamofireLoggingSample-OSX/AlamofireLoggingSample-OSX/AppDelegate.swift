//
//  AppDelegate.swift
//  AlamofireLoggingSample-OSX
//
//  Created by Benoit BRIATTE on 23/12/2016.
//  Copyright © 2016 Digipolitan. All rights reserved.
//

import Cocoa
import Alamofire
import AlamofireLogging

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        SessionManager.default.request("http://date.jsontest.com").log(level: .verbose).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                print("Alamofire \(value)")
            case .failure(let error):
                print("\(error)")
            }
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}
