//
//  TwoNumberSumToTarget.swift
//  swift算法集锦
//
//  Created by fantasy on 2021/1/8.
//  Copyright © 2021 fantasy. All rights reserved.
//

import Foundation

/*
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
