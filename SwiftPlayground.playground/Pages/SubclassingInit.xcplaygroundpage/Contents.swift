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

class Honda: Car {
    var range: Double
    
    override init(make: String, model: String, color: String) {
        self.range = 300
        super.init(make: make, model: model, color: color)
    }
}

let honda = Honda(make: "Honda", model: "Civic")
print(honda)
