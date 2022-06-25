// Functions
import UIKit

// In Out Parameters

struct User {
    var userId: Int?
    let name: String
}

func saveUser(_ user: inout User) {
    user.userId = 100
}

var user = User(name: "Sergio")
saveUser(&user)

print(user)
