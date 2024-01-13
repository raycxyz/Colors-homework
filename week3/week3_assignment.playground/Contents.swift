import Cocoa

// a
let nums = 0...20
for i in nums where i.isMultiple(of: 2){
    print(i)
}

// b
let sentence = "The qUIck bRown fOx jumEd over the lAzy doG"
let vowels = ["a", "e", "i", "o", "u"]
var numberOfVowels = 0

for i in sentence {
    for j in vowels {
        if String(i) == j {
            numberOfVowels += 1
        }
    }
}

// c
let x = 0...4
let y = 0...4

for i in x {
    for j in y {
        print("\(i) x \(j) = \(i * j)")
    }
    print("")
}

// d
func average(number: [Int]?) {
    if let number = number {
        let sumNumbers = number.reduce(0, +)
        let averageNumbers = sumNumbers / number.count
        print("The average of the values in the array is \(averageNumbers).")
    } else {
        print("The array is nil. Calcualting the average is impossible")
    }
}
let testAverage: [Int]? = nil
average(number: Array(nums))
average(number: testAverage)

// e
struct Person {
    let firstName: String
    let lastName: String
    let age: Int
    
    func details() {
        print("Name: \(firstName) \(lastName), Age: \(age)")
    }
}
let person = Person(firstName: "Raymond", lastName: "Ho", age: 30)
person.details()


// f
class Student {
    let person: Person
    let grades: [Int]
    
    init(person: Person, grades: [Int]) {
        self.person = person
        self.grades = grades
    }
    
    func calculateAverageGrade() -> Double {
        let sum = grades.reduce(0, +)
        let average = Double(sum / grades.count)
        return average
    }
    
    func details() {
        print("Name: \(person.firstName) \(person.lastName), Age: \(person.age), GPA: \(calculateAverageGrade())")
    }
}
let studentA = Student(person: person, grades: [94, 99, 81, 100, 79])
studentA.details()
