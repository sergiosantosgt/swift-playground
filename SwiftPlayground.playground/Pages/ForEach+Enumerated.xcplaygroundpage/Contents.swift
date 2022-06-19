// forEach

import UIKit

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

movies.forEach { movie in
    addToFavoriteList(movie)
}

func addToFavoriteList(_ movie: Movie) {
}

// enumerated
movies.enumerated().forEach { (index, movie) in
    print("Movie at \(index) has a title \(movie.title)")
}
