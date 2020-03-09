//
//  Calc.swift
//  SingletonApp2
//
//  Created by 近藤宏輝 on 2020/03/03.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import Foundation

class Calc {
    
    static func multiplySingleton(multi: Int, multiplyNumberArray:([Int]) -> Void  ) {
        
        let singleton:Singleton = Singleton.sharedInstance
        let singletonMultiply = singleton.getContents()
        
        var afterMultiplyInt = [Int]()
        
        for multiplyNumber in singletonMultiply {
            let afterMultiply = multiplyNumber * multi
            afterMultiplyInt.append(afterMultiply)
        }
        
        multiplyNumberArray(afterMultiplyInt)
    }
}
