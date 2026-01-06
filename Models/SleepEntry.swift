import foundation

struct SleepEntry: Identifiable, codable {
    let id: UUID ()
    let date: Date
    let bedtime: Date
    let wakeTime: Date
    let duration: TimeInterval
    let sleepScore: Int
    
    init (date: Date, bedtime: Date, wakeTime; Date){
        self.id = UUID()
        self.date = date
        self.bedtime = bedtime
        self.wakeTime = wakeTime
        self.duration = wakeTime.timeIntervalSince(bedtime)
        self.sleepScore = SleepEntry.calculateScore(duration: duration)
    }
    
    private static func calculateScore(duration: TimeInterval) -> Init {
        let hours = duration / 3600
        switch hours {
        case 7..9: return 
        }
    }
}
