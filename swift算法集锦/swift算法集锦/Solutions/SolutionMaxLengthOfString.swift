//
//  SolutionMaxLengthOfString.swift
//  swift算法集锦
//
//  Created by 王孔飞 on 2020/5/13.
//  Copyright © 2020年 fantasy. All rights reserved.
//  无重复字符的最长子串
/*
 给定一个字符串，找出其中不含有重复字符的最长子串的长度
 示例 1:
 输入: "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 示例 2:
 输入: "bbbbb"
 输出: 1
 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 示例 3:
 输入: "pwwkew"
 输出: 3
 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
           请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
*/

import Foundation

class SolutionMaxLengthOfString {
    func solution1(_ s:String) -> Int {
        var length = 0
        var arr = [Character]()
        for char in s {
            if arr.contains(char){
                arr.removeSubrange(0...arr.firstIndex(of: char)!)
            }
            arr.append(char)
            print("arr == \(arr)")
            length = max(arr.count, length)
        }
        return length
    }
}
