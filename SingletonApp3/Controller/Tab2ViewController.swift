//
//  Tab2ViewController.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class Tab2ViewController: UITabBarController {
    
    var numberArray2:[Int] = []
        
    var tableView2:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Calc.multiplySingleton(multi: 2) { (numberArray) in
            self.numberArray2 = numberArray
        }
        
        print(numberArray2)
        
        
        // テーブルのインスタンス
        tableView2 = UITableView()
        
        // テーブルサイズを画面いっぱいに
        tableView2.frame = view.frame
        
        //tableViewのdelegate
        tableView2.delegate = self
        tableView2.dataSource = self
        
        // セルをテーブルに紐付ける
        tableView2.register(UITableViewCell.self, forCellReuseIdentifier: "Cell2")
        
        // データのないセルを表示しないようにするハック
        tableView2.tableFooterView = UIView(frame: .zero)
        
        // テーブルを表示
        view.addSubview(tableView2)

    }
    
    
}

extension Tab2ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArray2.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell2")
        
        cell.textLabel?.text = String(numberArray2[indexPath.row])
        
        return cell
    }
}

