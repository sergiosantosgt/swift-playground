// access items of an array
let languages = ["Swift", "Java", "Go", "JavaScript"]

for language in languages {
    print(language)
}


// remove Java from an array

for language in languages where language != "Java"{
  print(language)
}

// for Loop With Range

var values = 0...1

// iterate from i = 1 to 1 = 3
for i in values {
    print(i)
}

// for Loop with Stride Function

for i in stride(from: 1, to: 10, by: 2) {
    print("stride: \(i)")
}
