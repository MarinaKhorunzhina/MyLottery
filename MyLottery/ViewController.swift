//
//  ViewController.swift
//  MyLottery
//
//  Created by Marina on 12.11.22.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ticket = MyLotteryImpl()
        let count = 100
        for _ in 0 ..< count {
            ticket.checkLotteryTicketSerialNumber(ticketNumber:Int.random(in: 0..<99999999))
            Thread.sleep(forTimeInterval: 0.5)
    }


}
}
