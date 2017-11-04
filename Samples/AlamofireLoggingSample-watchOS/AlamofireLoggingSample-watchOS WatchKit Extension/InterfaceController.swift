//
//  InterfaceController.swift
//  AlamofireLoggingSample-watchOS WatchKit Extension
//
//  Created by Benoit BRIATTE on 23/12/2016.
//  Copyright © 2016 Digipolitan. All rights reserved.
//

import WatchKit
import Foundation
import Alamofire
import AlamofireLogging

class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        SessionManager.default.request("http://date.jsontest.com").log(level: .verbose).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                print("Alamofire \(value)")
            case .failure(let error):
                print("\(error)")
            }
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
