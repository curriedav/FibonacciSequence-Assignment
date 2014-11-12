// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [Int]
    
    init(maxNumber: Int, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        
        var fibArray = [0, 1]
        
        if maxNumber == 0 {
            fibArray = [0]
        } else {
            
            var nextNumber = 0
            var i = 0
            
            while nextNumber <= maxNumber {
                
                i = fibArray.count
                nextNumber = fibArray[i - 1] + fibArray[i - 2]
                
                if nextNumber <= maxNumber{
                    fibArray.append(nextNumber)
                }
                
            }
        }
        
        if includesZero == false {
            fibArray.removeAtIndex(0)
        }
        
        self.values = fibArray
        println(self.values)
        
    }
    
    init(numberOfItemsInSequence: Int, includesZero: Bool) {
        self.includesZero = includesZero
//        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.
        
        var fibArray = [0, 1]
        var nextNumber = 0
        var i = 0
        
        if includesZero == false {
            fibArray = [1]
        }
            
        while fibArray.count < numberOfItemsInSequence {
            i = fibArray.count
            nextNumber = fibArray[i - 1] + fibArray[i - 2]
            fibArray.append(nextNumber)
        }
        
        self.values = fibArray
        println(self.values)
    }
}

let fibanocciSequence = FibonacciSequence(maxNumber:12345, includesZero: true)

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: true)

println(anotherSequence.values.count)
