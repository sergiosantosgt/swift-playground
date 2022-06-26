import Foundation
import UIKit

protocol CarType {
    init(make: String, model: String)
}

final class Car: CarType {
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
    
    /*class func makeCar(make: String, model: String) -> Self {
        let car = self.init(make: make, model: model)
        // setup engine
        // setup fuel
        // setup tires
        return car
    }*/
}

/*class Honda: Car {
    var range: Double
    
    override init(make: String, model: String, color: String) {
        self.range = 300
        super.init(make: make, model: model, color: color)
    }
}*/

let car = Car(make: "Honda", model: "Civic")
print(car.make)
