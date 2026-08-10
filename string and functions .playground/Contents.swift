import UIKit

var greeting = "Hello, playground"

let joke = """
the name of the king is james
who is a tyrant and is the 
worst king of the century
"""
print (joke)
 let movie="nnaman\""

print("hello\tworld")
 print("the name of judge is \\ world")
 print("the movie was \n bad as hell")
print("the actor is legend \r in hollywood")
  

let name=""
let newname=String()
print("result:(name)")
print("result:(newname)")
let s1="james"
let s2=String("jones")
print(s1)
print(s2)
  

if s1.isEmpty{
    print("corect")
}
else{
    print("wrong")
}
let string3:Character="a"

// concatenation
let string1="john"
let string2="jones"

var constring=string1 + " " + string2
print(constring)

constring+="\t  legend"
print(constring)
  

//string interpolation
let nname="ram"
let age=10
print("the name is \(nname) and his age is \(age)")

 let month="march"
 let othermonth="march"
let othercasemonth="march"
if month==othermonth{
    print("month is march")
}
if month != othercasemonth{
    print("month is not march")
}

let cafe="cafe\u{307}"
let cafe2="cafe"
print(cafe==cafe2)


 let lower_casename="JOHN HOPKINNS"
print(lower_casename.lowercased())
if lower_casename.lowercased()=="JOHN HOPKINNS".lowercased(){
    print("equal")
}
print(lower_casename.hasPrefix("JOHN"))
print(lower_casename.hasSuffix("HOPKINNS"))

 let cow="🐮"
 print("🐮".count)
print(cow)
 


//functions

//
//func tiemyshoe(name:String,age:Int -> String){
//    print(")
//}

func pi(){
    print("3.111223")
    
}
pi()

func triple(value:Int){
    let result=value*3
    print(result)
}


triple(value: 10)



// concept of external name
func add(value1:Int, with value2:Int){
    let result=value1+value2
    print("the sum of value1 \(value1) and \(value2) is result \(result) is : \(result)")
}
//add(value1: 10,with value2: 20)
add(value1: 10, with: 20) // called using the external name and improves readability




func sayHello( to name1:String ,and name2:String){
    print("say hello to \(name1) and \(name2)")
}
sayHello(to: "ram", and: "shyam")


func sum(val1:Int,  and val2:Int) -> Int{
     val1+val2
    
}
print(sum(val1: 10, and: 20))



//func getDetails()->(String,Int){
//    let name="Ram"
//    let age=10
//    return (name,age)
//}
// let student=getDetails()
//print("\(student.0) and has age \(student.30)")

// use of inout
func changeName(_ name: inout String){
    
    name="Rahul"
    print("inside function:\(name)")
    
}
var studentname="Amit"
changeName(&studentname)
print("after function call : \(studentname)")

// function with default values
func displayTeam(_ teamname:String,teamcaptain:String="virat kohli",_  home:String,_ score:Int=0){
    print("\(teamname) has \(teamcaptain) for \(home) and score is \(score)")
}
//displayTeam(teamname: "india", teamcaptain: "virat kohli", home: "mohali", score: 100)
displayTeam("india", "mohali")//use the default parameters in the end for this problem
