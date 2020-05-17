//
//  LongestPalindrome.swift
//  swift算法集锦
//
//  Created by fantasy on 2020/5/17.
//  Copyright © 2020 fantasy. All rights reserved.
//

/*
    2最长回文串
        给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为 1000。
        示例 1：
        输入: "babad"
        输出: "bab" 注意: "aba" 也是一个有效答案。
        示例 2：
        输入: "cbbd"
        输出: "bb"
        */

import Foundation

class LongestPalindrome {
// MARK: - 动态分布方法
    func longestPalindromeSolution2(_ s:String) -> String {
        return "a"
    }
    
    
// MARK: - 中心扩散方法
    /*
      中心扩展就是把给定的字符串的每一个字母或两个字母之间空隙当做中心，向两边扩展，这样来找
      长度为奇数的回文串，比如a, aba, abcba，以字母为中心
      长度为偶数的回文串，比如aa, abba，以两个字母之间空隙为中心
      时间复杂度：O(n²)。
      空间复杂度：O(1)。
       */
    func longestPalindrome(_ s:String) -> String {
        var start :Int = 0     //记录起始位置
        var maxLength :Int = 1 //记录最长回文位置
        guard s.count > 1 else {
            return s
        }
        let chars = [Character](s)
        //中心扩散，，单核 和 双核 因为回文可能是奇数，也可能是偶数
        for i in 0..<s.count {
           let length1 = longestHelp(s, i, i)//单核回文
           let length2 = longestHelp(s, i, i+1)//双核回文
           let tempMaxLength = max(length1, length2)
           if tempMaxLength > maxLength {
               maxLength = tempMaxLength
               start = i - (maxLength - 1 ) / 2
           }
        }
        return  String(chars[start...maxLength-1])
    }
        
    private func longestHelp(_ s:String, _ low:Int, _ high:Int) -> Int {
        var thisLow = low
        var thisHigh = high
        let chars = [Character](s)
        while (thisLow >= 0 && thisHigh < s.count && chars[thisLow] == chars[thisHigh]) {
            thisLow -= 1
            thisHigh += 1
        }
        return thisHigh - thisLow - 1
    }
}
