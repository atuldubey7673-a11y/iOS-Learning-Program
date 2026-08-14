import UIKit

struct Details{
    var name:String="james"
    var age:Int=40
    var gender:String
    
    
    func sayhello(){
        print("hello my name is \(name) , my age is \(age) and i am a \(gender)")
    }
}

var p1=Details(name: "Ram", age: 32, gender: "Male")
var p2=Details(name: "Shyam", age: 49, gender: "Male")
print(p1.name)

p1.age=100
print(p1.age)
p1.age+=10
print(p1.age)


p1.sayhello()
p2.sayhello()
   


struct  Car{
    var cartype:String
    var color :String
    var year :Int
    var topspeed:Double
    
    
    
    func  startEngine(){
        
        print(" car is started")
        
    func drive(){
            print("you can drive the car")
        }
        
    func park(){
            print("car is parked")
        }
        
        
    }
    
}
var car1=Car(cartype: "suv", color: "black", year: 2000, topspeed: 200)
var car2=Car(cartype: "sedan", color: "grey", year: 2003, topspeed: 150)

print(car1.cartype)




struct shirt{
    let color:String
    let size:String
}
 var shirt1=shirt(color: "blue", size: "large")
//shirt1.color="red"



//string intializers

// default initializers
let string=String.init() // by using syntatic sugar , we can remove the .init part here while creating instances
let bool=Bool.init()
let int=Int.init()


//syntactic sugar

func sumOfNumbers(num1:Int,num2:Int)->Int{
     num1+num2 //absence of return keyword when only a single line is written, only in case of a single line is example of syntactic sugar
}
print("the string contains the value \(string)")
print("the string contains the value \(bool)")
print("the string contains the value \(int)")

struct Odometer{
    var count :Int=0
}

let  odometer=Odometer()
print(odometer.count)

//memberwise initializers-takes all members as properties,except
struct Chair{
    var hasLegs:Bool
    var hasNumberOfLegs:Int
    
}
//var redChair=





//custom initializers
//struct Temperature{
//    var celsius:Double
//   
//}
//let todaytemp=Temperature(celsius: 90)
//var tempfahrenheit=98.6
//var tempcelsius=(tempfahrenheit-32)*1.8
//var tomtemp=Temperature(celsius:tempcelsius)
 
//
//struct Temperature{
//    var celsius:Double
//    init(celsius:Double){
//    self.celsius=celsius
//}
//    init(fahrenheit:Double){
//    celsius=(fahrenheit-32)*1.8
//}
//    init(kelvin:Double){
//        celsius=kelvin-273.15
//    }
//    init(){
//        celsius=0
//    }
//   
//}
//
//
//var newTemperature=Temperature(fahrenheit: 100)
//print(newTemperature)
//var newTemperatuteinCeslius=Temperature(celsius: 38)
//print(newTemperatuteinCeslius)
//var defaulttemperature=Temperature()
//
//print(newTemperatuteinCeslius)



//  struct are value types-when you assign a struct to another variable a copy of it is created and no changes are made in the in copy instance by making change in the original variable


struct Book{
    var author:String
    var title:String
}
var book1=Book(author: "ram", title: "the saga of world")
var book2=book1
book1.author="shyam"
print(book2.author)


//instance methods-func inside structues are called methods

struct Size{  // size is a type
    var height:Double
    var width:Double
    func area() -> Double{
          width * height
    }
    
}
var someSize=Size(height: 100, width: 20)
print(someSize.area())
 

//mutating methods-helps to update the properties of a instance on which it is called in struct and enum

struct   Speedometer{
    var count :Int=0
    
    mutating  func increase(){
        count+=10
    }
    mutating func increaseBy( by amount:Int){
        count += amount
        
    }
    mutating  func reset(){
        count=0
    }
}

var speedc1=Speedometer()
speedc1.increase()
speedc1.increase()
speedc1.increaseBy(by: 200)
print(speedc1)
  


//struct Temperature{
//    let celsius:Double
//    let fahrenheit:Double
//    let kelvin :Double
//    init (celsius:Double){
//        self.celsius=celsius //self is used for identification for the celsius here
//        fahrenheit=celsius*1.8+32
//        kelvin=celsius+273.15
//    }
//    init (fahrenheit:Double){
//        self.fahrenheit=fahrenheit
//        celsius=(fahrenheit-32)*1.8
//        kelvin=celsius+273.15
//    }
//    init (kelvin:Double){
//        self.kelvin=kelvin
//        celsius=kelvin-273.15
//        fahrenheit=celsius*1.8+32
//        
//    }
//    
//}
//problerm here is that for large number of properties the complexities increase
//let currentTemp=Temperature(celsius: 0)
//print(currentTemp.fahrenheit,currentTemp.celsius,currentTemp.kelvin)
//print(currentTemp.kelvin)



//------- concept of computed property --------//

struct Temperature{
    var celsius:Double
    var fahrenheit:Double{
        celsius*1.8+32
    }
    var kelvin:Double{
        celsius+273.15
    }
}
var temp1=Temperature(celsius: 0)
print(temp1.fahrenheit)
print(temp1.kelvin)


//------Property Observers------//

struct Stepcounter{
    var totalsteps:Int=0{
        willSet{
            print("about to set the total steps to \(newValue)")
        }
        
        didSet{
            if totalsteps>oldValue {
                print("Added \(totalsteps - oldValue) steps")
            }
        }
    }
}
var currentSteps=Stepcounter()
currentSteps.totalsteps=20
currentSteps.totalsteps=10
