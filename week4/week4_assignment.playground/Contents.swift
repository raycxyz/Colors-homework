import Cocoa

//a 
func average(number: [Int]?) {
    if let number = number {
        let sumNumbers = number.reduce(0, +)
        let averageNumbers = sumNumbers / number.count
        print("The average of the values in the array is \(averageNumbers).")
    } else {
        print("The array is nil. Calcualting the average is impossible")
    }
}

func average(for number: [Int]) -> Int {
    let sumNumbers = number.reduce(0, +)
    let averageNumbers = sumNumbers / number.count
    
    return averageNumbers
}

let array = 0...20
let average1 = average(number: Array(array) ?? nil)
let average2 = average(for: Array(array))


//b
enum Animal {
    case dog, cat, bird, pig, cow
}

func theSoundMadeBy(animal: Animal) -> String {
    switch animal {
    case .dog:
        return "A dog goes woof"
    case .cat:
        return "A cat goes meow"
    case .bird:
        return "A bird goes tweet"
    case .pig:
        return "A pig goes oink"
    case .cow:
        return "A cow goes moo"
    }
}

let cow = theSoundMadeBy(animal: Animal.cow)
let cat = theSoundMadeBy(animal: Animal.cat)



//c
var nums: [Int] = Array(0...100)
var numsWithNil: [Int?] = [79, nil, 80, nil, 90, nil, 100, 72]

var numsBy2: [Int] {
    let array = Array(2...100)
    var finalArray: [Int] = []
    
    for value in array where value.isMultiple(of: 2) {
        finalArray.append(value)
    }
    return finalArray
}

var numsBy4: [Int] {
    let array = Array(2...100)
    var finalArray: [Int] = []
    
    for value in array where value.isMultiple(of: 4) {
        finalArray.append(value)
    }
    return finalArray
}

func evenNumbersArray(numbers: [Int]) -> [Int] {
    var evenNumbers = [Int]()
    
    for number in numbers where number.isMultiple(of: 2){
        evenNumbers.append(number)
    }
    return evenNumbers
}

print(evenNumbersArray(numbers: nums))

func sumOfArray(numbers: [Int?]) -> Int {
    let sumOfNumbers = numbers.compactMap{ $0 }.reduce(0, +)
    return sumOfNumbers
}

print(sumOfArray(numbers: numsWithNil))


func commonElementSet(arrayA: [Int], arrayB: [Int]) -> Set<Int> {
    Set(arrayA).union(Set(arrayB))
}

print(commonElementSet(arrayA: numsBy2, arrayB: numsBy4))




//d
struct Square {
    let sideLength: Int
    var area: Int {
        sideLength * sideLength
    }
}

let square = Square(sideLength: 5)
print(square.area)




// Above and Beyond
protocol Shape {
    func calculateArea() -> Double
}

struct Circle: Shape {
    let length: Double
    
    func calculateArea() -> Double {
        3.14 * pow(length, 2)
    }
}

let circle = Circle(length: 3)
circle.calculateArea()

struct Rectangle: Shape {
    let length: Double
    let width: Double
    
    func calculateArea() -> Double {
        length * width
    }
}

let rectangle = Rectangle(length: 2, width: 3)
rectangle.calculateArea()

struct Sphere: Shape {
    let length: Double
    
    func calculateArea() -> Double {
        4 * 3.14 * pow(length, 2)
    }
    
    func calculateVolume() -> Double {
        4 / 3 * 3.14 * pow(length, 3)
    }
}

let sphere = Sphere(length: 4)
sphere.calculateArea()
sphere.calculateVolume()


