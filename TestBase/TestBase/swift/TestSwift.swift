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
    @objc func say(name: String) -> String {
        print("The dog is eating")
        return "sdsdsd"
    }
//    @objc func register(withRegistrarB: SampleProtocolDelegate2) {
//        print("chengjian_test print register")
//        NSLog("chengjian_test NSLog register")
//    }
    @objc func register(withRegistrarB: String) {
        print("chengjian_test print register")
        NSLog("chengjian_test NSLog register")
    }
}
