//
//  BingoMachine.swift
//  Bingo Machine
//
//  Created by Andrew Nomura on 10/1/20.
//  Copyright © 2020 Andrew Nomura. All rights reserved.
//

import Foundation

class BingoMachine{
    //declare a tumbler to keep track of numbers that haven't been called
    private var tumbler: [Int]
    //declare called numbers array
    var calledNumbers: [Int]
    
    init(){
        //instantiate the tumber called numbers array
        tumbler = [Int]()
        calledNumbers = [Int](repeating: 0, count: 75)
        
        //add numbers to tumbler
        for i in 1...75{
            tumbler.append(i)
        }
    }
    
    func reset() {
        calledNumbers = [Int](repeating: 0, count: 75)
        for i in 1...75{
            tumbler.append(i)
        }
    }
    
    func getNumber() -> String {
        //x generated between 1-75
        let x = Int.random(in: 1...75)
        let index = x-1
        var num = String(x)
        
        
        //if x is already called then recursively call the function
        if hasCalled(number: x){
            return getNumber()
        }
        else { //otherwise output the Column and Number and store it in called[] array at the proper index
            if (1 <= x && x <= 15){
                calledNumbers.insert(x, at: index)
                num = "B" + num
            }
            if (16 <= x && x <= 30){
                calledNumbers.insert(x, at: index)
                num = "I" + num
            }
            if (31 <= x && x <= 45){
                calledNumbers.insert(x, at: index)
                num = "N" + num
            }
            if (46 <= x && x <= 60){
                calledNumbers.insert(x, at: index)
                num = "G" + num
            }
            if (61 <= x && x <= 75) {
                calledNumbers.insert(x, at: index)
                num = "O" + num
            }
            
            return(num)
        }
        
    }
    
    func numsRemaining() -> Bool {
        //checks if there are more than 0 items in the tumbler
        return tumbler.count > 0
    }
    
    func hasCalled(number: Int) -> Bool {
        //checks if number has been called
        return calledNumbers.contains(number)
    }
}
