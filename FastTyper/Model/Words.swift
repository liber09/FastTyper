//
//  Words.swift
//  FastTyper
//
//  Created by Linda Bergsängel on 2023-03-24.
//

import Foundation

class Words{
    
    private var allWords:[Int: [String]] = [:]
    private var wordList = [String]()
    private var difficulty: Int
    
    init(level: Int){
        difficulty = level
        
        let jsonData = readLocalJSONFile(forName: "words")
        do {
                let data = readLocalJSONFile(forName: "words")
            let json = try JSONSerialization.jsonObject(with: data!) as! [[[String: Any]]]
            addWordsToAllWordList(json)
            }
            catch {
                print(error)
            }
        
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
    
    func addWordsToAllWordList(json: [[[String: Any]]]){
        
    }
}
