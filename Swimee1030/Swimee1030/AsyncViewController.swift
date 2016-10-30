//
//  ViewController.swift
//  Swimee1030
//
//  Created by 荒川陸 on 2016/10/29.
//  Copyright © 2016年 Riku Arakawa. All rights reserved.
//

import UIKit

class AsyncViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func on1() {
        var cnt = 0
        for _ in 0...10000000000 {
            cnt += 1
        }
        print(cnt)
    }
    
    @IBAction func tap() {
        print("tapped")
    }
    
    @IBAction func on2() {
        DispatchQueue.global().async {
            var cnt = 0
            for _ in 0...10000000000 {
               cnt += 1
            }
            
            DispatchQueue.main.async {
                print(cnt)
            }
        }
    }


}

