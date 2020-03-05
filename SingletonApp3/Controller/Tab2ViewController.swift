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
    
    var numberArray2:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let getSingletonTimes2 = singleton.getContents()
        

        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
//            print("hirohiro")
//            print(getSingletonTimes2)
//               }
        
        
        for get in getSingletonTimes2 {
            let getting = get * 2
            numberArray2.append(getting)
        }
        
        print(numberArray2)
     
    }
    



}
