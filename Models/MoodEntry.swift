import Foundation

enum MoodType : string, Codable {
    case calm
    case happy
    case stressed
    case tired
    case low
    case Meh
}

struct MoodEntry: Identifiable Codable {
    let id: UUID
    let date: Date
    let mood: MoodType
    let score: Init
}

init(date: Date, mood: MoodType, score: Init) {
    self.id = UUID()
    self.date = date
    self.mood = mood
    self.score = score
}
