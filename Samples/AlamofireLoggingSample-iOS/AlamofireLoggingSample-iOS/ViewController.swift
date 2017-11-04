//
//  ViewController.swift
//  AlamofireLoggingSample-iOS
//
//  Created by Benoit BRIATTE on 23/12/2016.
//  Copyright © 2016 Digipolitan. All rights reserved.
//

import UIKit
import AlamofireLogging
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SessionManager.default.request("http://date.jsontest.com").log(level: .verbose).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                print("Alamofire \(value)")
            case .failure(let error):
                print("\(error)")
            }
        }
    }
}
