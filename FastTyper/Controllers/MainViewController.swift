//
//  ViewController.swift
//  FastTyper
//
//  Created by Linda Bergsängel on 2023-03-20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startGame(_ sender: Any) {
        let gameStoryboard = UIStoryboard(name: "Game",bundle: nil)
        let vc = gameStoryboard.instantiateViewController(withIdentifier: "GameViewController")
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func ShowHowToPlay(_ sender: Any) {
        
    }
}

