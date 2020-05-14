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
 输出: [1,2,2,3,5,6]
 */

import Foundation

class MergeSortedArray {
    func merge(_ nums1:[Int], _ m:Int, _ nums2:[Int], _ n:Int) -> [Int] {
        var result = [Int](nums1)
        print("result == \(result)")
        for (i,thisnum) in nums2.enumerated() {
            print("i == \(i) thisnum == \(thisnum)")
            for renum in result.reversed() {
                print("renum== \(renum)")
                if renum == 0 {
                    result.remove(at: result.)
                    print("result == \(result) j == \(j)")
                    break;
                }
                if result[j] <= thisnum {
                    result.insert(thisnum,at:j)
                    break
                }
            }
        }
        return result
    }

}
