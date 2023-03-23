import UIKit

class GameViewController: UIViewController {

    var currentWord: String?
    var score = 0;
    var selectedDifficulty: Int = 5
    
    @IBOutlet weak var wordToType : UILabel!

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
        let wordList = readLocalJSONFile(forName: "words")
        
    }
    
    
    func readLocalJSONFile(forName name: String) -> Data? {
        do {
            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
    
    @IBAction func userInput(_ sender: UITextField) {
    }
}
