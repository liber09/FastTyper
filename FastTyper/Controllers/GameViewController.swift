import UIKit

class GameViewController: UIViewController {
    
    var currentWord: String?
    var score = 0;
    var clock: Clock?
    var selectedDifficulty: Int = 5
    var wordslist = WordsList()
    var secondsByDifficulty = 5
    
    @IBOutlet weak var editText: UITextField!
    @IBOutlet weak var wordToType : UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func word(_ sender: UITextField) {
        if editText.text == currentWord{
            score+=1
            scoreLabel.text = String(score)
            editText.text = ""
            setWordToType()
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
        clock?.startTimer(difficulty: selectedDifficulty)
        setWordToType()
    }
    
    func setWordToType(){
        currentWord = wordslist.getRandomWord()
        wordToType.text = currentWord
    }
    

}
