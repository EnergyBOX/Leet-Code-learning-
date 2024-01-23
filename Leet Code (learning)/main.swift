//
//  main.swift
//  Leet Code (learning)
//
//  Created by Server Admin on 23.01.2024.
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        nums = Array(Set(nums)).sorted()

        return Set(nums).count
    }
}


//tast case
var nums = [1,7,1,2]

var solution = Solution()

print (solution.removeDuplicates(&nums))
print(nums)

pause()
