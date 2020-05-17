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
}
