import UIKit

struct Details{
    var name:String
    var age:Int
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

//example of default initializers
let string=String.init() // by using syntatic sugar , we can remove the .init part here
let bool=Bool.init()
let int=Int.init()


//syntactic sugar

func sumOfNumbers(num1:Int,num2:Int)->Int{
     num1+num2 //absence of return keyword when only a single line is written, only in case of a single line
}
print("the string contains the value \(string)")
print("the string contains the value \(bool)")
print("the string contains the value \(int)")



 //memberwise initializers






//custom initializers
