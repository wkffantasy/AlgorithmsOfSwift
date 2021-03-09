//
//  TwoNumberSumToTarget.swift
//  swift算法集锦
//
//  Created by fantasy on 2021/1/8.
//  Copyright © 2021 fantasy. All rights reserved.
//

import Foundation

/*
 给定一个整数数组 nums 和一个整数目标值 target，请你在该数组中找出 和为目标值 的那 两个 整数，并返回它们的数组下标。

 你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。

 你可以按任意顺序返回答案
 
 给定一个数组 a = [2，7，11，15]  target = 9
 找到数组a中 两个相加 == target的数 返回下标
 return [0,1]
 */

class TwoNumberSumToTarget: NSObject {
    
    class func solution(array: Array<Int>, target: Int) -> Array<Int>? {
        guard array.isEmpty else {
            // key是target - number, value是下标
            var dict: Dictionary<Int, Int> = [:]
            for number in array {
                if dict.keys.contains(number) {
                    return [dict[number]!, array.firstIndex(of: number)!]
                } else {
                    dict[target - number] = array.firstIndex(of: number)!
                }
            }
            return nil
        }
        return nil;
    }
}
