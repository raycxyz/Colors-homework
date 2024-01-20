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
enum Animal: String {
    case dog = "wolf"
    case cat = "meow"
    case bird = "tweet"
    case pig = "oink"
    case cow = "moo"
    
    func speak() -> String {
        self.rawValue
    }
}

func theSoundMadeBy(animal: Animal) {
    print("\(animal.rawValue)")
}

let cow = theSoundMadeBy(animal: .cow)
let cat = theSoundMadeBy(animal: .cat)



//c
var nums = Array(0...100)
var numsWithNil: [Int?] = [79, nil, 80, nil, 90, nil, 100, 72]

var numsBy2 = stride(from: 2, through: 100, by: 2).map { $0 }
var numsBy4 = stride(from: 2, through: 100, by: 4).map { $0 }

func evenNumbersArray(for number: [Int]) -> [Int] {
    number.filter { $0.isMultiple(of: 2) }
}

print(evenNumbersArray(for: nums))

func sumOfArray(numbers: [Int?]) -> Int {
    let sum = numbers.compactMap { $0 }.reduce(0, +)
    return sum
}

print(sumOfArray(numbers: numsWithNil))


func commonElementsSet(arrayA: [Int], arrayB: [Int]) -> Set<Int> {
    Set(arrayA).intersection(Set(arrayB))
}

print(commonElementsSet(arrayA: numsBy2, arrayB: numsBy4))




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
    
//    func calculateVolume() -> Double {
//        4 / 3 * 3.14 * pow(length, 3)
//    }
}

extension Shape {
    func calculateVolume(length: Double) -> Double {
        4 / 3 * 3.14 * pow(length, 3)
    }
}

let sphere = Sphere(length: 4)
sphere.calculateArea()
sphere.calculateVolume(length: 4.1)


