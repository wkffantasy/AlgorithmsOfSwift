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
        // 两数之和
        let a = TwoNumberSumToTarget.solution(array: [2, 6,4,11,44], target: 55)
        print("a == \(a)")
        
        //最大的回文数
//        let s = Solutions.init().longestPalindrome("dbba")
//        print("s == ", s)
        
        //无重复的最大子串的长度
//        let s = so.solution1("abcabcbb")
//        print("无重复的最大子串的长度 s == \(s)")
        
        // 合并有序的数组
//        var nums1 = [1,2,5,7,9,0,0,0]
//        let m1 = MergeSortedArray.init().merge(nums1: &nums1, 5, [1,3,4,5,8,10], 6)
//        print("合并有序的数组 m1 == \(m1)")
    }
}

