//
//  Solutions.swift
//  swift算法集锦
//
//  Created by 王孔飞 on 2020/5/12.
//  Copyright © 2020年 fantasy. All rights reserved.
//

import Foundation
class Solutions {
    /*
     1 两数只和
     给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
     你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。
     示例:
     给定 nums = [2, 7, 11, 15], target = 9
     因为 nums[0] + nums[1] = 2 + 7 = 9
     所以返回 [0, 1]
     [1,2,11,15,111,7], 9
     */
    func twoNumsSum(_ nums:[Int],_ target:Int) -> [Int] {
        var dict = [Int:Int]()
        for(i,num) in nums.enumerated() {
            print("dict[target - num] == ", dict[target - num])
            if let lastIndex = dict[target - num] {
                return [lastIndex,i]
            }
            dict[num] = i
            print("dict == ", dict)
        }
        fatalError("no valid outputs");
    }
    
    //2最长回文串
    /*
     给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为 1000。
     示例 1：
     输入: "babad"
     输出: "bab" 注意: "aba" 也是一个有效答案。
     示例 2：
     输入: "cbbd"
     输出: "bb"
     */
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
        
//        guard s.characters.count > 1 else {
//            return s
//        }
//        var sChars = [Character](s.characters)
//        let len = sChars.count
//        var maxLen = 1
//        var maxStart = 0
//        var isPalin = Array(repeating: Array(repeating: false, count: len), count: len)
//
//        for i in 0...len-1 {
//            isPalin[i][i] = true
//        }
//
//        for i in 0...len-2 {
//            if sChars[i] == sChars[i+1] {
//                isPalin[i][i+1] = true
//                maxLen = 2
//                maxStart = i
//            }
//        }
//
//        if len > 3 {
//            for length in 3...len {
//                for i in 0...len-length {
//                    if sChars[i] == sChars[i+length-1]
//                    && isPalin[i+1][i+length-2] {
//                        isPalin[i][i+length-1]=true
//                        maxLen = length
//                        maxStart = i
//                    }
//                }
//            }
//        }
//        print("isPalin == ", isPalin)
//        return String(sChars[maxStart...maxStart+maxLen-1])
    }
}
