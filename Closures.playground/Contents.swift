//closures - a reference type

func add(x: Int, y: Int) -> Int {               ///function
    return x+y
}
add(x:20, y: 30)


///closure is of 4 types.


let printClosure = { () -> Void in
    print("This is a closure")                                             /// TYPE 1 - only body, no parameters, no return type.
}
printClosure


let printSecondClosure = { (x: Int, y: Int) -> Void in                     ///TYPE 2 - Takes parameters but doesn't return anything.
}
printSecondClosure(29,39)


let printThirdClosure = { (x:Int, y:Int)-> Int in                          ///TYPE 3- Accepts parameters and returns too.
    return x + y
}
printThirdClosure(20,40)


let printFourthClosure = { () -> Int in                                   ///TYPE 4- No parameter with return.
return 0
}




func mathOperation(x:Int, y:Int, operation:(Int,Int)-> Int) -> Int {
    return operation(x,y)                                                /// this func has three parameters, i.e two are values and one is closure. where we write the type of closure too, i.e operation-> Int, Int.
}
let sumClosure = { (a:Int, b:Int) -> Int in
    return a+b                                                          /// defining the closure that we want to pass as the third parameter of the function.
}
let result = mathOperation(x: 20, y: 10, operation: sumClosure)
print(result)                                                           ///passing it in the function (sumClosure)

let differenceClosure = {
    (x: Int, y:Int) -> Int in
    return x-y
}
let resultTwo = mathOperation(x: 20, y: 10, operation: differenceClosure)
print(resultTwo)


///let's say I haven't defined a closure yet but still I want to pass a new closure in the function, how do we do that?
let resultThree = mathOperation(x:40, y: 21) {a, b in
return a * b }
print(resultThree)
///the closure has been defined in the curly braces, it is known as "TRAILING CLOSURE SYNTAX". Another example of trailing closure synatx.
let resultFour = mathOperation(x:2, y:3) { a, b in
return a/b }                                              ///if trailing parameters i.e {a, b int in} are closure then it's a trailing closure synatc of function.
print(resultFour)


///QUESTION : "closure vs func??",
///"when we have func then why do we still need closures?"


///Here we have an array that we need to make a closure of , we have the func defined with the type of closure also defined.
func performFunction(on  numbers: [Int], using operation: ([Int]) -> Int) -> Int {
    return operation(numbers)
}
///here we "define" the closure, with the particular operation that we wanted to perform.
let arraySumClosure = { (numberArray: [Int]) -> Int in
    var sum = 0
    
    for number in numberArray {                        ///this is a whole return condition.
        sum += number
    }
    return sum
}
print(performFunction(on: [10,20,30], using: arraySumClosure))


/// QUESTION : let sorted tracks = {} get the tracks sorted according to the track number
struct Track {
    var trackNumber: Int
    var starRating: Int
}

let tracks = [Track(trackNumber: 101, starRating: 5),
              Track(trackNumber: 100, starRating: 3),
              Track(trackNumber: 201, starRating: 2),                        ///how do we get the sorting features in an app, like sort by rating and etc. This is how it's done.
              Track(trackNumber: 109, starRating: 4)]

let sortedTracks = tracks.sorted {(track1: Track, track2: Track) in
    track1.trackNumber < track2.trackNumber
}
for track in sortedTracks {
    print(track)
}

let sortedStarRating = tracks.sorted{(star1: Track, star2: Track) in
    star1.starRating > star2.starRating
}
for track in sortedStarRating {
    print(track)
}


///HIGHER ORDER FUNCTIONS EX- MAP, FILTER, REDUCE

let emails = ["ashok.kumar@gmail.com",
              "MEERA.CHOPRA@GMAIL.com",
              "ravi09@gmail.com",
              "ManojSharma@gmail.com",
              "aMar.singh@gmail.Com"]

var lowerCaseEmails = [String]()
 
/*for email in emails {
    lowerCaseEmails.append(email.lowercased())
}*/

lowerCaseEmails = emails.map {$0.lowercased()}         //This is the closure.

/*for email in lowerCaseEmails {
    print(email)
}*/


let scores = [70,86,95,43,76,89,93,94,81,80]
var greaterThan90 = [Int]()
   /*  for number in course {
        if  number >= 90 {
            greaterThan90.append(number)
    }
}
print(greaterThan90)*/
greaterThan90 = scores.filter { $0 >= 90 }
print(greaterThan90)

let highestScore = scores.reduce(0) { max($0,$1) }
print(highestScore)



///CLOSURE CAPTURE THEIR ENVIRONMENT- that it can use the values present just above it , it  can outlive their own cope
func incrementer() {
    var count = 0
    
    let incrementByOne = { count += 1}
    
    incrementByOne()
    incrementByOne()
    
    print(count)
}



func makeincrementer( forIncrement amount:Int)->()->Int{
    var runningTotal=0
    func incrementer()->Int{
        runningTotal+=amount
        return runningTotal
    }
    return incrementer
}


let incrementByTen=makeincrementer(forIncrement: 10)
let incrementByThree=makeincrementer(forIncrement: 3)
incrementByTen()
let makeanotherincrement=incrementByTen
makeanotherincrement()
makeanotherincrement()
incrementByTen()


struct Person {
    let name:String
    let age:Int
    
    init(initializer: () ->(String,Int)){
        (name,age) = initializer()
    }
    
}

let person=Person{
    ("Edward",56)
}


//closures as callback mechanisms - how a place order func calls a


func placeOrder(itemName:String,completion:(String)->Void){
    print("CLIENT: Sending orfer request for \(itemName)")
    
}


func confirmOrder(){
    
}



@resultBuilder
struct simpleStringBuilder{
    static func buildBlock(_ components: String...) -> String {
        <#code#> 
    }
}
