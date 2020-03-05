//
//  Tab1ViewController.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class Tab1ViewController: UITabBarController {
        
    var  numberArray = [0,1,2,3,4]
    let singleton:Singleton = Singleton.sharedInstance
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        singletonSave()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.singletonGet()
        }
        
    }
    

    func singletonSave() {
        
        
        singleton.saveContents(content: numberArray)
        
    }
    
    func singletonGet() {
        print(singleton.getContents())
    }
    

}
