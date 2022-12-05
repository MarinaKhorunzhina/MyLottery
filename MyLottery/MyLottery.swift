//
//  MyLottery.swift
//  MyLottery
//
//  Created by Marina on 12.11.22.
//

import UIKit


protocol MyLottery {
    func checkLotteryTicketSerialNumber(ticketNumber: Int) -> Bool
}

class MyLotteryImpl: MyLottery {
    
    private var count = 1
    
    func checkLotteryTicketSerialNumber(ticketNumber: Int) -> Bool{
        
        let serialNumberLength = String(ticketNumber).count
        if serialNumberLength <= 8  && serialNumberLength >= 2 && serialNumberLength % 2 == 0 {
            let halfOfSerialNumberLength = serialNumberLength/2
            let leftSide = String(ticketNumber).prefix(halfOfSerialNumberLength).compactMap{$0.wholeNumberValue}.reduce(0,+)
            let rightSide = String(ticketNumber).suffix(halfOfSerialNumberLength).compactMap{$0.wholeNumberValue}.reduce(0,+)
            if leftSide == rightSide {
                print("\(count). Ticket number \(ticketNumber) is WIN!")
                count += 1
                return true
            } else {
                print("\(count). Ticket number \(ticketNumber) not WIN")
                count += 1
            }
        
        } else {
            print ("\(count). \(ticketNumber) is incorrect value. Serial number must be even with length from 2 to 8")
            count += 1
        }
        return false
    }
}


