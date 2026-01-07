import Foundation

enum SleepQuality: Int, Codable {
    case poor = 1
    case moderate = 2
    case good = 3
    case excellent = 4
}

struct SleepEntry: Identifiable, Codable {
    let id: UUID
    let date: Date
    let bedtime: Date
    let wakeTime: Date
    let duration: TimeInterval
    let quality: SleepQuality
    let sleepScore: Int

    init(date: Date = Date(), bedtime: Date, wakeTime: Date) {
        self.id = UUID()
        self.date = date
        self.bedtime = bedtime
        self.wakeTime = wakeTime
        self.duration = wakeTime.timeIntervalSince(bedtime)
        self.quality = SleepEntry.calculateQuality(duration: duration)
        self.sleepScore = quality.rawValue
    }

    // MARK: Sleep Quality Calculation
    private static func calculateQuality(duration: TimeInterval) -> SleepQuality {
        let hours = duration / 3600

        switch hours {
        case 7..<9:
            return .excellent
        case 6..<7, 9..<10:
            return .good
        case 5..<6, 10..<11:
            return .moderate
        default:
            return .poor
        }
    }
}
