//
//  Roman to Integer.swift
//  Leet Code (learning)
//
//  Created by Server Admin on 27.01.2024.
//

import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        
        var roman = s
        var integer = 0
        

        func modifier (_ romSymbol: String, to augment: Int) {
            
            while let range = roman.range(of: romSymbol) {
                roman.removeSubrange(range)
                integer += augment
//                print(romSymbol, augment)
                
            }
        }
        
        
        modifier("CM", to: 900)
        modifier("CD", to: 400)
        modifier("XC", to: 90)
        modifier("XL", to: 40)
        modifier("IX", to: 9)
        modifier("IV", to: 4)

        modifier("M", to: 1000)
        modifier("D", to: 500)
        modifier("C", to: 100)
        modifier("L", to: 50)
        modifier("X", to: 10)
        modifier("V", to: 5)
        modifier("I", to: 1)
        
        return integer
    }
}


var someSol = Solution()
var someCase = "MCMXCIV"
print(someSol.romanToInt(someCase))
