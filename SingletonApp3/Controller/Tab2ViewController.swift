//
//  Tab2ViewController.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class Tab2ViewController: UITabBarController {

    let singleton:Singleton = Singleton.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        var getSingletonTimes2 = singleton.getContents()
        
//        for get in getSingletonTimes2 {
//            get = get * 2
//        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            print("hirohiro")
            print(getSingletonTimes2)
               }
     
    }
    



}
