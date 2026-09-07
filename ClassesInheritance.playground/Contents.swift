//class Person{
//    var name: String
//    var age: Int
//    init(name: String , age: Int) {
//        self.name = name
//        self.age = age
//    }
//    func sayHello(){
//        print("Hello, my name is \(name)")
//    }
//}
//var anyPerson = Person(name: "Astitva", age: 20)
//anyPerson.sayHello()

class Vehicle{
    var currentSpeed = 0.0
    
    var description : String{
        "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        
    }
}
var someVehicle = Vehicle()
print("Vechile : \(someVehicle.description)")

class Bicycle : Vehicle{
    var hasBasket = false
    
}
var bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 100.0
print("Bicycle : \(bicycle.currentSpeed)")

class TandemCycle : Bicycle{
    var currentNumberOfPassesngers = 2
}
var tandem = TandemCycle()
print("Number of passesngers : \(tandem.currentNumberOfPassesngers)")
tandem.currentNumberOfPassesngers = 6
//after updating
print("Number of passesngers : \(tandem.currentNumberOfPassesngers)")
tandem.hasBasket = true
tandem.currentSpeed = 25.0
print(tandem.hasBasket)
print(tandem.description)

class Train : Vehicle{
    override func makeNoise() {
        print("Choo Choo!!")
    }
}
var train = Train()
train.makeNoise()
class Car : Vehicle{
    var gear = 1
    override var description: String{
        (super.description) + "in gear \(gear)"
    }
}
var car = Car()
car.currentSpeed = 180.0
car.gear = 5
print(car.description)

class Person{
    let name : String
    
    init(name :String){
        self.name = name
    }
}
class Student : Person{
    var favoriteSubject : String
    init(name : String , favoriteSubject : String){
        self.favoriteSubject = favoriteSubject
        super.init(name: name)
    }
}
var someStudent = Student(name: "Anand", favoriteSubject: "CS")
print(someStudent.favoriteSubject)
print(someStudent.name)


class Person{
    var name : String
    var age : Int
    
    init(name :String , age : Int){
        self.name = name
        self.age = age
    }
}
var jack = Person(name: "Jack", age: 20)
print(jack.age)
var myFriend = jack
print(myFriend.age)
jack.age += 1
print(jack.age)
print(myFriend.age)

struct anotherPerson{
    var name : String
    var age : Int
    init(name :String , age : Int){
        self.name = name
        self.age = age
    }
}
var mike = anotherPerson(name: "Mike", age: 20)
print(mike.age)
var riyan = mike
print(riyan.age)
mike.age += 1
print(mike.age)
print(riyan.age)

print("Swift End!")
