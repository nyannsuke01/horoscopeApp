//
//  ResultViewController.swift
//  horoscope
//
//  Created by user on 2020/04/26.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit
import Alamofire
class ResultViewController: UIViewController {

    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var rankingLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        getHoroscope()
    }


    func getHoroscope() {

            Alamofire.request("http://api.jugemkey.jp/api/horoscope/2020/04/27").responseJSON { response in
                if let json = response.result.value {
                    print("JSON: \(json)")
                }

            }

    }
    


}
