//
//  Singleton.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//


import Foundation

class Data {
    
    var contents: String

    init(contents: String) {
        self.contents = contents
    }

}

class Singleton: NSObject {

    var data = Data(contents: "")
    static let sharedInstance: Singleton = Singleton()

    private override init() {
        
        
    }
    

    func saveContents(content: String) {
        data.contents = content
    }
    

    func getContents() -> String {
        return data.contents
    }
    
    
}
