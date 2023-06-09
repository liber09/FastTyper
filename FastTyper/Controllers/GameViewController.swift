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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if clock == nil {
            clock = Clock(timerLabel: timerLabel)
        }
        scoreLabel.text = String(score)
        timerLabel.text = String(selectedDifficulty)
        clock?.startTimer(difficulty: selectedDifficulty)
        setWordToType()
        
        editText.addTarget(self, action: #selector(checkWord), for: .editingChanged)
    }
    
    @IBAction func checkWord(_ sender: UITextField) {
        if editText.text == currentWord{
            score+=1
            scoreLabel.text = String(score)
            editText.text = ""
            setWordToType()
            
        }
    }
    
    func setWordToType(){
        currentWord = wordslist.getRandomWordByDifficulty(difficulty: selectedDifficulty)
        wordToType.text = currentWord
    }
    

}
