import Foundation
import UIKit

class Car {
    var make: String
    var model: String
    var color: String
    
    init(make: String, model: String, color: String) {
        self.make = make
        self.model = model
        self.color = color
    }
    
    convenience init (make: String, model: String) {
        self.init(make: make, model: model, color: "White")
    }
}

let carConvenience = Car(make: "Honda", model: "Accord")
let car = Car(make: "Ford", model: "Focus", color: "Red")
