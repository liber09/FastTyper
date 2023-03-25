//
//  ViewController.swift
//  FastTyper
//
//  Created by Linda Bergsängel on 2023-03-20.
//

import UIKit

class ViewController: UIViewController {

    var selectedDifficulty: Int = 0
    
    @IBOutlet weak var difficulty: UISegmentedControl!
    
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
        let howToPlayStoryboard = UIStoryboard(name: "HowToPlay",bundle: nil)
        let howToVc = howToPlayStoryboard.instantiateViewController(withIdentifier: "HowToPlayViewController")
        present(howToVc, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
            if let gameViewController = segue.destination as? GameViewController{
              gameViewController.selectedDifficulty = selectedDifficulty
                
            }
        }
    
    @IBAction func selectDifficulty(_ sender: UISegmentedControl) {
        switch(difficulty.selectedSegmentIndex){
        case 0:
            selectedDifficulty = 5
        case 1:
            selectedDifficulty = 4
        case 2:
            selectedDifficulty = 3
        
        default:
            selectedDifficulty = 5
        }
    }
}

