import Playgrounds
//struct Student : Equatable , Comparable{
//    var id : Int
//    var name : String
//    static func <(lhs : Student,rhs : Student)->Bool{
//        lhs.id < rhs.id
//    }
//}
//func max<T>(_ x:T ,_ y:T)->T where T : Comparable{
//    if y >= x{
//        return y
//    }else{
//        return x
//    }
//}
//func swapTwoValue<T>(_ a:inout T,_ b:inout T)->T{
//    let temporaryA = a
//    a = b
//    b = temporaryA
//    return a
//}
//struct Stack<Element>{
//    var items: [Element] = []
//    mutating func push(_ item : Element){
//        items.append(item)
//    }
//    mutating func pop() -> Element{
//        return items.removeLast()
//    }
//    func display(){
//        for item in items{
//            print(item)
//        }
//    }
//}
//extension Stack{
//    var topItem : Element?{
//        return items.isEmpty ? nil : items[items.count-1]
//    }
//}
#Playground {
//    let ints = [1,2,3,4]
//    var strings = Array<String>()
//    strings.append("A")
//    print(strings)
//    let wordsByLength = [1:["a","i"],2:["hi","by","go"],3:["the","but","now","how"]]
//    for words in wordsByLength{
//        print(words)
//    }
//    let wordsByLength = [Int:[String]]()
//    let wordsByLength = Dictionary<Int,Array<String>>()
//    struct Student: Hashable, Comparable {
//        var id: Int
//        var name: String
//
//        init(id: Int, name: String) {
//            self.id = id
//            self.name = name
//        }
//
//        static func < (lhs: Student, rhs: Student) -> Bool {
//            lhs.id < rhs.id
//        }
    }
//
//    let studentOne = Student(id: 1, name: "Astitva")
//    let studentTwo = Student(id: 2, name: "Anand")
//    let result = max(studentOne, studentTwo)
//    print(result)
//    var wordByLength = Dictionary<Student, Array<String>>()
//    let result = max("b","i")
//    
//    print(max(5, 2))
//    var firstNum = 4
//    var secondNum = 2
//    print(swapTwoValue(&firstNum, &secondNum))
//    var myStack = Stack<Any>()
//    myStack.push(7)
//    myStack.push(6)
//    //myIntStack.pop()
//    myStack.display()
//    var myStringStack = Stack<String>()
//    myStringStack.push("A")
//    myStringStack.push("B")
//    myStringStack.display()
//    if let currentTopItem = myStack.topItem{
//        print("The top item on the stack is \(currentTopItem)")
//    }
//}

    let strings=Array<String>()
    let dictionary=Dictionary<Int,Array<String>>()


struct Student:CustomStringConvertible{
    var id:Int
    var name:String
    var  description:String{
        "\(name) has the id  \(id)"
    }
}

let firstStudent=Student(id: 1, name: "Ram")
let secondStudent=Student(id: 2, name: "Shyam")

struct Stack<T>{
    var items: [T] = []
    mutating func push(_ item :T){
        items.append(item)
    }
    mutating func pop(_ item:T){
        items.popLast()
    }
    mutating func display( ){
        for item in items {
            print("\(item) ")
            
        }
       
    }
}

var inStack=Stack<Int>()
inStack.push(1)
inStack.push(2)
inStack.push(3)
inStack.push(4)

var stringStack=Stack<String>()
stringStack.push("Raghav")
stringStack.push("Jonathan")

var studentStack=Stack<Student>()
studentStack.push(firstStudent)
studentStack.push(secondStudent)
studentStack.display()

//func findIndex(ofString valueToFind:String, in array:[String])->Int{
//    for i in 0..<array.count{
//        if array[i] == valueToFind{
//            return i
//        }
//    }
//    return -1
//}
//let string=["cat","dog","cow","bird"]

//func findIndex(ofString valueToFind:String, in array:[String])->Int?{
//    for (index,value) in array.enumerated(){
//        if value == valueToFind{
//            return index
//        }
//    }
//    return -1
//}
//let string=["cat","dog","cow","bird"]
//findIndex(ofString: "cow", in: string)


// converting this function to genric function  bu using T and [T]//

func findIndex<T:Equatable>(ofString valueToFind:T, in array:[T])->Int?{
    for (index,value) in array.enumerated(){
        if value == valueToFind{
            return index
        }
    }
    return -1
}
let string=["cat","dog","cow","bird"]

// genric protocol are to useful when we want to work across different data types while keeping the relationship consistent ,here we can see how it is very cofudsing and hectic if we use seperate protocols for each struct



protocol TestData{
    func sumOfData(a:Int,b:Int)->Int
}
protocol stringData{
    func sumOfString(a:String,b:String)->String
}
struct MyData:TestData{
    func sumOfData(a: Int, b: Int)->Int {
        return a+b
    }
    
}
struct Mydata2:stringData{
    func sumOfString(a: String, b: String) -> String {
        return a + b
    }
}
let firstData=MyData()
let result = firstData.sumOfData(a: 10, b: 20)
print(result)

let firstString=Mydata2()
let result2=firstString.sumOfString(a: "ram", b: "an")
print(result2)


// Genric Protocol

protocol GenricTestData{
    associatedtype item
    func sumOfData(a:item,b:item)->item
}

struct genMyData:GenricTestData{
    typealias item = Int
    func sumOfData(a: item, b: item) -> item {
        return a + b
    }
    
}

struct genMyDatastr:GenricTestData{
    typealias item=String
    func sumOfData(a: String, b: String) -> String {
        return a + b
    }
}
let genString=genMyDatastr()
let strresult=genString.sumOfData(a: "goth", b: "am")
print(strresult)

protocol Shape{
   associatedtype T
    func draw()->T
}
struct Circle:Shape{
    typealias T = Int
    var name="circle"
    func draw() -> T {
        return 1
    }
}
struct triangle:Shape{
    typealias T=Double
    var name="triangle"
    func draw() -> Double {
        return 1.0
    }
}
// opaque return  type - instead of typing the specific return type , i can write the protocol comnformed by structure by using some keyword awith the genric protocol name
func getShapeType() -> some Shape{
    let shape1=Circle()
    return shape1
//    let shape2=triangle()
//    return shape2
}
func getAnotherShape()->some Shape{
    let shape2=triangle()
     return shape2
}


    let result1=getShapeType()
    print("Resul:\(result1)")



