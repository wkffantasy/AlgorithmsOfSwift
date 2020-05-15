//
//  MergeSortedArray.swift
//  swift算法集锦
//
//  Created by 王孔飞 on 2020/5/14.
//  Copyright © 2020年 fantasy. All rights reserved.
//
/*
 给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。
 说明:
 初始化 nums1 和 nums2 的元素数量分别为 m 和 n 。
 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。
   
 示例:
 输入:
 nums1 = [1,2,3,0,0,0], m = 3
 nums2 = [2,5,6],       n = 3
 
 1，2，3
 2 5，6
 输出: [1,2,2,3,5,6]
 */

import Foundation

class MergeSortedArray {
    
    func merge( nums1:inout [Int], _ m:Int, _ nums2:[Int], _ n:Int) -> [Int] {
        print("nums1 == \(nums1) \nnums2 = \(nums2)")
        
        for thisnum in nums2 {
            for renum in nums1.reversed() {
                if renum == 0 {
                    nums1.remove(at: nums1.lastIndex(of: renum)!)
                    continue
                }
                if renum <= thisnum {
                    if nums1.last == renum {
                        nums1.append(thisnum)
                    } else {
                        nums1.insert(thisnum, at: nums1.firstIndex(of: renum)! + 1)
                    }
                    break
                }
            }
        }
        return nums1
    }

}
