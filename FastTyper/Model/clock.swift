//
//  clock.swift
//  FastTyper
//
//  Created by Linda Bergsängel on 2023-03-23.
//

import Foundation
import UIKit

class Clock {
    var timeLeft : Double = 0
    var startTime : Date?
    var timer : Timer?
    var timeSpent : Double
    var isRunning : Bool
    var timerLabel : UILabel!
    
    init(timerLabel: UILabel!) {
        
        self.timer = Timer()
        self.isRunning = false
        self.timeSpent = 0
        self.timerLabel = timerLabel
    }
    
    
    func startTimer(difficulty: Int, wordLength: Int) {
        let secondsPerLetter = (1.0 - (Double(difficulty) / 100))  * 0.4
        timeLeft = (Double(wordLength) *  secondsPerLetter) + 2
        print(wordLength, difficulty, secondsPerLetter, timeLeft)
        setStartTime()
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: runTimer(timer:))
        isRunning = true
        }
    
    
    func setStartTime() {
        startTime = Date()
    }
    
    
    func runTimer(timer : Timer) {
        if let startTime {
            timeSpent = Date().timeIntervalSince1970 - startTime.timeIntervalSince1970
        } else {return}
        
        if timeLeft - timeSpent  > 1 {
            timerLabel.text = String(Int(timeLeft - timeSpent))
        } else {
            timesUp()
        }
    }
    
    func timesUp() {
        timerLabel.text = "Time's up!"
    }
    
    
    func stopTimer() {
        timeLeft -= timeSpent
        isRunning = false
        timer?.invalidate()
    }
}