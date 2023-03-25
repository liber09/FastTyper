//
//  LaunchScreenViewController.swift
//  FastTyper
//
//  Created by Linda Bergsängel on 2023-03-25.
//

import UIKit

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(timeToMoveOn), userInfo: nil, repeats: false)
    
    }
    
    @objc func timeToMoveOn() {
            self.performSegue(withIdentifier: "goToMainUI", sender: self)
        }
}
