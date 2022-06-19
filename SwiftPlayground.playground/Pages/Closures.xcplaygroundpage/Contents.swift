// Closures
import UIKit

// ignore parameters use _
// use $0 to get parameter value

let hello: (String) -> () = { name in
    print("Hello \(name)!")
}

hello("Sergio")


let pow: (Int, Int) -> Int = {
    return $0 * $1
}

let result = pow(5, 3)
print(result)

func getPosts(completion: @escaping ([String]) -> ()) {
    var posts: [String] = []
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        posts = ["Hello World", "Introduction to Closures"]
        completion(posts)
    }
}

getPosts { posts in
    print(posts)
}
