//
//  ViewController.swift
//  ClockApp
//
//  Created by David Svensson on 2022-11-22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    let formatter = DateFormatter()
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateTimeLabel()

        formatter.timeStyle = .medium

        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: updateTimeLabel(timer:))

    }

    
    func updateTimeLabel(timer: Timer? = nil) {
        let date = Date()
        let dateString = formatter.string(from: date)
        
        timeLabel.text = dateString
    }

    deinit {
        timer?.invalidate()
    }

    

}



//var numberString : String?
//
//numberString = "5"
//
//// version 0 gör aldrig så här!!!!!!!! ---- KOMMER ATT KRASHA ----
//// let number = Int(numberString!)
//// let bigNumber = number! + 4
//// print(bigNumber)
//
//// version 1
//if let numberString = numberString {
//    if let number = Int(numberString) {
//        let bigNumber = number + 4
//        print(bigNumber)
//    }
//}
//
//// version 2
//if let numberString = numberString,
//   let number = Int(numberString) {
//        let bigNumber = number + 4
//        print(bigNumber)
//}
//
//
//// version 3
//let number = Int(numberString ?? "") ?? 0
//let bigNumber = number + 4
//print(bigNumber)
//
//
////version 4
//func printBigNumber() {
//    guard let numberString = numberString else {return}
//    guard let number = Int(numberString) else {return}
//    
//    
//    let bigNumber = number + 4
//    print(bigNumber)
//}
//






