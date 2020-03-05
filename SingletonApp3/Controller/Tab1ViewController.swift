//
//  Tab1ViewController.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit


//すみません・・・、.textを入れるの忘れていました・・・。
//Generic iOS Deviceしか左上で表示されていない状態です。

//いえ、私が作成したものは大丈夫です。
//またシミュレータを追加することが出来ない状態です。

class Tab1ViewController: UITabBarController {
    
    var array = Array()
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    @IBAction func startSingleton1(_ sender: Any) {
        let singleton :Singleton =  Singleton.sharedInstance
               
        guard let content = textField.text else { return }
               
        singleton.saveContents(content: content)
        label.text = singleton.getContents()
        array.arrayData.append(label.text!)
        UserDefaults.standard.set(array, forKey: "arrayKey")
        
        
    }
    

}
