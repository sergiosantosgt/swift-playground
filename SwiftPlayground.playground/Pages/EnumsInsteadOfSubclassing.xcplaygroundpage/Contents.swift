import UIKit
import Foundation

class Ticket {
    var departure: String
    var arrival: String
    var price: Double
    
    init(departure: String, arrival: String, price: Double) {
        self.departure = departure
        self.arrival = arrival
        self.price = price
    }
}

class BuddyPass: Ticket {
    
}

class Economy: Ticket {
    
}

class FirstClass: Ticket {
    var meal: Bool
    
    init(departure: String, arrival: String, price: Double, meal: Bool) {
        self.meal = meal
        super.init(departure: departure, arrival: arrival, price: price)
    }
}

class Business: Ticket {
    var chargingPorts: Bool
    var meal: Bool
    
    init(departure: String, arrival: String, price: Double, chargingPorts: Bool, meal: Bool) {
        self.chargingPorts = chargingPorts
        self.meal = meal
        super.init(departure: departure, arrival: arrival, price: price)
    }
}

func checkIn(ticket: Ticket) {
    
    switch ticket {
        case let ticket as Economy:
            print(ticket)
        case let ticket as FirstClass:
            print(ticket)
        case let ticket as Business:
            print(ticket)
        default:
            print("Undentied ticket!")
    }
    
}
