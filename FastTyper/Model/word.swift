import Foundation

struct word: Codable {
    let word: String
}
struct sampleRecord: Codable {
    let word: [word]
}
