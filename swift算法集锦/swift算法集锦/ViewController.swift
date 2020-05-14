//
//  ViewController.swift
//  swift算法集锦
//
//  Created by 王孔飞 on 2020/5/12.
//  Copyright © 2020年 fantasy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let so = Solutions.init()
        let so = SolutionMaxLengthOfString.init()
        // 两数之和
//        let a = so.twoNumsSum([1,2,11,15,111,7], 9)
//        print(a)
        
        //最大的回文数
//        let s = so.longestPalindrome("ab")
//        print("s == ", s)
        
        //无重复的最大子串的长度
        let s = so.solution1("abcabcbb")
        print("无重复的最大子串的长度 s == \(s)")
    }
}

