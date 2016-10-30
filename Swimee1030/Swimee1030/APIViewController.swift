//
//  APIViewController.swift
//  Swimee1030
//
//  Created by 荒川陸 on 2016/10/29.
//  Copyright © 2016年 Riku Arakawa. All rights reserved.
//

import UIKit
import Alamofire

final class APIViewConroller: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func push() {
        let str = "https://qiita.com/api/v2/items"
        let url = URL(string: str)
        guard let URL = url else {return}
        let request = Alamofire.request(URL)
        
        print("-------------------------------------")
        request.responseJSON {result in
            print("get result")
        }
        print("pushed")
    }
    
}
