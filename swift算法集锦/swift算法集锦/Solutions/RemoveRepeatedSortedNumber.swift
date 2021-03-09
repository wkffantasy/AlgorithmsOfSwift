//
//  RemoveRepeatedSortedNumber.swift
//  swift算法集锦
//
//  Created by fantasy on 2021/3/8.
//  Copyright © 2021 fantasy. All rights reserved.
//

/*
 
 给定一个排序数组，你需要原地删除重复的元素，使得每个元素只出现一次，返回移除后的新的数组
 示例1
 数组 nums = [1, 1, 2]  返回  [1, 2]
 示例2
 数组 nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4] 返回  [0, 1, 2, 3, 4]
 
 */

import Foundation

class  RemoveRepeatedSortedNumber {
    
    class func removeIt(nums:inout [Int]) {
        print("nums == \(nums)")
        var slow = 0
        var fast = 1
        for num in nums {
            if fast > nums.count - 1 {
                break
            }
            if nums[slow] != nums[fast] {
                slow = slow + 1
                nums[slow] = nums[fast]
            }
            fast = fast + 1
            print("num == \(num)")
        }
        let rang: Range = slow + 1 ..< nums.count
        nums.removeSubrange(rang)
    }
    
    // 解法2
    class func removeIt2(nums: inout [Int]) {
        var i:Int = 0
        for j:Int in 1..<nums.count {
            if(nums[j] != nums[i]){
                i+=1
                nums[i] = nums[j]
            }
        }
        let rang: Range = i + 1 ..< nums.count
        nums.removeSubrange(rang)
    }
    
}
