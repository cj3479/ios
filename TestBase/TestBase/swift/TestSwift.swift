//
//  TestSwift.swift
//  TestBase
//
//  Created by chengjian on 2021/3/5.
//  Copyright © 2021 chengjian. All rights reserved.
//
import UIKit
class SwiftClass: NSObject {
    @objc let legNumber = 4
    var temper = "temper-good"
    func say(name: String) -> String {
        print("The dog is eating")
        return "sdsdsd"
    }
//    @objc func register(withRegistrarB: SampleProtocolDelegate2) {
//        print("chengjian_test print register")
//        NSLog("chengjian_test NSLog register")
//    }
    @objc func register(withRegistrarB: String) {
        var aa = 10
        var bb = 30
        if aa == 10, bb == 30 {
            print("register chengjian_test 111");
            return
        }
        
        if aa == 10, bb == 11 {
            print("register chengjian_test 2222");
            return
        }
        print("chengjian_test print register")
        NSLog("chengjian_test NSLog register")
    }
}
