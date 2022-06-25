import Foundation
import UIKit

enum Level {
    case easy
    case medium
    case hard
}

struct Exam {
    var level: Level
    
    lazy private(set) var questions: [String] = {
        
        sleep(5)
        
        switch level {
            case .easy:
                return ["What is 1 + 2", "What is 2 + 2", "What is 2 + 3"]
            case .medium:
                return ["What is 11 + 22", "What is 22 + 22", "What is 32 + 43"]
            case .hard:
                return ["What is 122 + 332", "What is 441 + 255", "What is 544 + 433"]
        }
    }()
}

var exam = Exam(level: .easy)
// print(exam.questions)

var hardExam = exam
hardExam.level = .hard

print("[Hard Exam] \(hardExam.questions)")

//print("Wait for 1 second")
//sleep(1)
//print(exam.questions)

// OBS.: Variaveis do tipo lazy são executadas logo quando invocadas após isso não é possível realocar na memória.
