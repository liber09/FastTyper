//
//  words.swift
//  FastTyper
//
//  Created by Linda Bergsängel on 2023-03-22.
//

import Foundation

struct word: Codable {
    let word: String
}
struct sampleRecord: Codable {
    let word: [word]
}
