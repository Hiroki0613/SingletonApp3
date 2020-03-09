//
//  Tab3ViewController.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class Tab3ViewController: UITabBarController {
    
    var numberArray3:[Int] = []
    
    var tableView3:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Calc.multiplySingleton(multi: 3) { (numberArray) in
            self.numberArray3 = numberArray
        }
        
        // テーブルのインスタンス
        tableView3 = UITableView()
        
        // テーブルサイズを画面いっぱいに
        tableView3.frame = view.frame
        
        //tableViewのdelegate
        tableView3.delegate = self
        tableView3.dataSource = self
        
        // セルをテーブルに紐付ける
        tableView3.register(UITableViewCell.self, forCellReuseIdentifier: "Cell3")
        
        // データのないセルを表示しないようにするハック
        tableView3.tableFooterView = UIView(frame: .zero)
        
        // テーブルを表示
        view.addSubview(tableView3)


    }
    



}

extension Tab3ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArray3.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell3")
        
        cell.textLabel?.text = String(numberArray3[indexPath.row])
        
        return cell
    }
}
