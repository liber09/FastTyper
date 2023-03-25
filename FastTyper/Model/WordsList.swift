import Foundation

class WordsList {
    
    private var words = [Words]()
    
    init(){
        let gameWords = ["cars", "beach", "treehouse", "airplane", "helicopter", "road", "banana", "monkey", "elephant", "beach", "ocean", "sofa", "tiger", "chair", "book", "restaurant", "piano", "djungle", "dinosaurs", "towel", "capital", "drawer"]
        words = gameWords.map { Words(word: $0) }
    }
    
    //Get any word no matter length
    func getRandomWord() -> Words {
            let randm = Int.random(in: 0..<words.count)
            return words[randm]
        }
    
    //Get word by difficulty.
    func getRandomWordByDifficulty(difficulty: String) -> Words{
        
        switch difficulty{
        case "5":
            let shortWords = words.filter { $0.word.count <= 5 }
            let rnd = Int.random(in: 0..<shortWords.count)
            return shortWords[rnd]
            
        case "4":
            let mediumWords = words.filter { $0.word.count > 6 && $0.word.count <= 8  }
            let rnd = Int.random(in: 0..<mediumWords.count)
            return mediumWords[rnd]
            
        case "3":
            let longWords = words.filter {  $0.word.count > 8  }
            let rnd = Int.random(in: 0..<longWords.count)
            return longWords[rnd]
            
        default:
            return getRandomWord()
        }
    }
}
