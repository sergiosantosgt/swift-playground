// ZIP

import UIKit


let students = ["João", "Maria", "José", "Sergio"]
let grades = [2.4, 3.6, 5.7, 4.6]


let pair = zip(students, grades)


for studentAndGrade in pair {
    print(studentAndGrade.0)
    print(studentAndGrade.1)
}
