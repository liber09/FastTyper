//
//  clock.swift
//  FastTyper
//
//  Created by Linda Bergsängel on 2023-03-23.
//

import Foundation
import UIKit

class Clock {
    var time : Int
    var timer : Timer?
    var isRunning : Bool
    var timerLabel : UILabel!
    
    init(timerLabel: UILabel!) {
        self.time = 0
        self.timer = Timer()
        self.isRunning = false
        self.timerLabel = timerLabel
    }
    
    
    func startTimer(difficulty: Int) {
        time = difficulty
        timerLabel.text = String(time)
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: runTimer(timer:))
        isRunning = true
        }
    
    @objc func runTimer(timer : Timer) {
        if time < 1 {
            timer.invalidate()
            isRunning = false
            //GameOver
        }else{
            time -= 1
            timerLabel.text = String(time)
        }
    }
    
    func timesUp() {
        timerLabel.text = "Time's up!"
    }
    
    
    func stopTimer() {
        isRunning = false
        timer?.invalidate()
    }
}
