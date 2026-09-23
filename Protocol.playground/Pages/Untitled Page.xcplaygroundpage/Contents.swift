import Foundation
let someString : String = "Hello, World"
print(someString)
let someNumber : Int = 42
print(someNumber)
let someBool : Bool = true
print(someBool)
class Shoe : CustomStringConvertible{
    var colour : String
    var size : Int
    var hasLaces : Bool
    var description: String{
        return "My shoes colour is \(colour) the size is \(size) and it has laces \(hasLaces)."
    }
    init(colour: String, size: Int, laces: Bool) {
        self.colour = colour
        self.size = size
        self.hasLaces = laces
    }
}
let myShoe = Shoe(colour: "Beige", size: 7, laces: true)
print(myShoe)
struct Employee : Equatable, Comparable, Codable{
    
    let firstName : String
    let lastName : String
    let jobTitle : String
    let phoneNumber : Int
    let id : Int
    init(firstName: String, lastName: String, jobTitle: String, phoneNumber: Int, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.jobTitle = jobTitle
        self.phoneNumber = phoneNumber
        self.id = id
    }
    static func < (lhs : Employee, rhs : Employee) -> Bool {
        return lhs.firstName < rhs.firstName
    }
    static func == (lhs: Employee, rhs: Employee) -> Bool{
        return lhs.id == rhs.id
    }
}
struct Company{
    let name : String
    let employee : [Employee]
}
var currentEmployee = Employee(firstName: "ABC", lastName: "XYZ", jobTitle: "iOS_SDE0", phoneNumber: 941414816,id: 101)
var selectedEmployee = Employee(firstName: "ABC", lastName: "XYZ", jobTitle: "iOS_SDE1", phoneNumber: 328579223,id: 101)
var anotherEmployee = Employee(firstName: "JKL", lastName: "LKJ", jobTitle: "iOS_SDE2", phoneNumber: 454284224, id: 103)
var otherEmployee = Employee(firstName: "MNB", lastName: "ZXC", jobTitle: "iOS_SDE3", phoneNumber: 141424246, id: 104)
if currentEmployee == selectedEmployee{
    print("Enable the edit button")
}else{
    print("Disable the edit button")
}
if currentEmployee == selectedEmployee{
    print("Enable the edit button")
}else{
    print("Disable the edit button")
}

let employee = [currentEmployee,selectedEmployee,anotherEmployee,otherEmployee]
let sortedEmployee = employee.sorted(by: <)
for employee in sortedEmployee{
    print(employee)
}
//Encoding
let encoder = JSONEncoder()
if let jsonData = try? encoder.encode(selectedEmployee),
   let jsonString = String(data: jsonData, encoding: .utf8){
    print(jsonString)
    let decoder = JSONDecoder()
    if let decodeObject = try?decoder.decode(Employee.self,from: jsonData){
        print(decodeObject)
    }
}
protocol fullName{
    var fullName : String { get }
    func sayFullName()
}
struct Person : fullName{
    func sayFullName() {
        print(fullName)
    }
    
    var firstName : String
    var lastName : String
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
}
let person1 = Person(firstName: "Astitva", lastName: "Anand")
person1.sayFullName()


//---- delegate---//
protocol delegateButton{
    func userTapButton()
}
struct DelegatePerson : delegateButton{
    func userTapButton() {
        print("The person is taking the decision!")
    }
}
let someDelegatePerson = DelegatePerson()
someDelegatePerson.userTapButton()

class GameController : delegateButton{
    func userTapButton() {
        print("User tap the button to start the game!")
    }
}
var someGameController = GameController()
someGameController.userTapButton()

class MusicController : delegateButton{
    func userTapButton() {
        print("User tap the button to start the music!")
    }
}
    class Button{
        var title : String
        var delegate : delegateButton?
        init(title: String) {
            self.title = title
        }
        func tapName(){
            self.delegate? .userTapButton()
        }
    }
var someMusicController = MusicController()
someMusicController.userTapButton()
let button = Button(title : "Maybe VALOOOOO????")
button.delegate = someGameController
button.tapName()
let someButton = Button(title: "CAS!!!!")
button.delegate = someMusicController
button.tapName()
