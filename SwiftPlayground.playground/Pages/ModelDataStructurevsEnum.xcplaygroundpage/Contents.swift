// Model Data Structure vs Enum

import UIKit

// Using Enum

enum Session {
    case keynote(title: String, speaker: String, date: Date, isRecorded: Bool)
    case normal(title: String, speaker: String, date: Date)
    case workshop(title: String, speaker: String, date: Date, isRecorded: Bool)
    case joint(title: String, speakers: [String], date: Date)
}

let keynote = Session.keynote(title: "WWDC 2022", speaker: "Tim Cook", date: Date(), isRecorded: true)

func displaySession(session: Session) {
    switch session {
        case let .keynote(title: title, speaker: speaker, date: date, isRecorded: isRecorded):
            print("\(title) - \(speaker) - \(date) - \(isRecorded)")
        case let .normal(title: title, speaker: speaker, date: date):
            print("\(title) - \(speaker) - \(date)")
        default:
            print("")
    }
    
    /*if case let Session.keynote(title: title, speaker: speaker, date: date, isRecorded: isRecorded) = session {
        // it is a keynote session
    }*/
}

displaySession(session: keynote)


// Using Struct

/*struct Session {
    let title: String
    let speaker: String
    let data: Date
    let isKeynote: Bool
    let isWorkshop: Bool
    let isNormal: Bool
    let isRecorded: Bool
    let isJoinSession: Bool
    var jointSpeakers: [String]?
}

let session = Session(title: "Introdution to Swift", speaker: "Sergio", data: Date(), isKeynote: false, isWorkshop: false, isNormal: true, isRecorded: true, isJoinSession: false)*/
