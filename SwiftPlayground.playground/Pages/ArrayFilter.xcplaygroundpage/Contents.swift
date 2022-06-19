import UIKit

/*
// Filter Array
var names = ["João", "Maria", "Lucas", "Sergio"]

let finalNames = names.filter { name in
    return name.count > 4
}

print(finalNames)
 */

// Filter Object Movie

struct Movie {
    let title: String
    let genre: String
}

var movies: [Movie] = [
    Movie(title: "Lords of the King", genre: "Fiction"),
    Movie(title: "ET", genre: "Fiction"),
    Movie(title: "Cars", genre: "Kids"),
    Movie(title: "Finding Nemo", genre: "Kids")
]

let movieToRemove = Movie(title: "Finding Nemo", genre: "Kids")

// Removing by title
movies = movies.filter { movie in
    return movie.title != movieToRemove.title
}

print("# Movies \(movies)")

// Filter by Kids genre
let kidMovies = movies.filter { movie in
    return movie.genre == "Kids"
}

print("# kidMovies: \(kidMovies)")
