import UIKit



// global scope - defined outside a function
// local scope - defined within braces{}

var number = 10
var result = number * 19
func printNumber(number:Int){
    print(number)
}
printNumber(number: 10210)
print(number)


//var age=38
//func printMyAge(){
//    print("My age :\(age)")
//}

func printBottleCount(){
    var bottleCount=10
    print(bottleCount)
}
printBottleCount()
//print(bottleCount)


func printTenNames(){
    var name = "ryan"
    for i in 1...10{
        print("\(i) : \(name)")
    }
//    print(i)
    print(name)
 
}
printTenNames()

var num=3823
func printNum(){
    var num = 19323
    print(num)
}
print(num)
printNum()


let points=100
for index in 1...3{
    var points = 200
    print(" The  value at index \(index) : \(index+points)")
}


//---variable shadowing---//
func exclaim(name:String?){
    if let name = name {
        print("exclaim value was passed \(name)")
    }
    else{
        print("no value was passed")
    }
}
exclaim(name: "gordan")
exclaim(name: nil)



func nominate(name:String?){
    guard let name = name else{ return }
    print("the nominated value was passed \(name)")
}
nominate(name: "nelson")



struct Person{
    var name:String
    var age : Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
