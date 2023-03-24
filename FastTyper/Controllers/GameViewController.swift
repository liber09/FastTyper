import UIKit

class GameViewController: UIViewController {

    var currentWord: String?
    var score = 0;
    var clock: Clock?
    var selectedDifficulty: Int = 5
    var wordList: Array<String>?
    
    @IBOutlet weak var wordToType : UILabel!

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
        clock = Clock(timerLabel: timerLabel)
    
    func setWordToType(){
        word = wordList.
    }
    
    @IBAction func userInput(_ sender: UITextField) {
    }
}
