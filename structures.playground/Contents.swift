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
 

struct Temperature{
    var celsius:Double
    init(celsius:Double){
    self.celsius=celsius
}
    init(fahrenheit:Double){
    celsius=(fahrenheit-32)*1.8
}
    init(kelvin:Double){
        celsius=kelvin-273.15
    }
    init(){
        celsius=0
    }
   
}


var newTemperature=Temperature(fahrenheit: 100)
print(newTemperature)
var newTemperatuteinCeslius=Temperature(celsius: 38)
print(newTemperatuteinCeslius)
var defaulttemperature=Temperature()

print(newTemperatuteinCeslius)



//  struct are value types-when you assign a struct to another variable a copy of it is created and no changes are made in the in copy instance by making change in the original variable


struct Book{
    var author:String
    var title:String
}
var book1=Book(author: "ram", title: "the saga of world")
var book2=book1
book1.author="shyam"
print(book2.author)


