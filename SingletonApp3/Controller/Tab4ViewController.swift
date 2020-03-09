//
//  TabTableViewController.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class Tab4ViewController: UITabBarController {
    
    var numberArray4:[Int] = []
    
    var tableView4:UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        Calc.multiplySingleton(multi: 4) { (numberArray) in
                   self.numberArray4 = numberArray
               }
        
        // テーブルのインスタンス
        tableView4 = UITableView()
        
        // テーブルサイズを画面いっぱいに
        tableView4.frame = view.frame
        
        //tableViewのdelegate
        tableView4.delegate = self
        tableView4.dataSource = self
        
        // セルをテーブルに紐付ける
        tableView4.register(UITableViewCell.self, forCellReuseIdentifier: "Cell4")
        
        // データのないセルを表示しないようにするハック
        tableView4.tableFooterView = UIView(frame: .zero)
        
        // テーブルを表示
        view.addSubview(tableView4)


    }
    


}

extension Tab4ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArray4.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell4")
        
        cell.textLabel?.text = String(numberArray4[indexPath.row])
        
        return cell
    }
}


