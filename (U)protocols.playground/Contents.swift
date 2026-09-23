import UIKit
import Foundation


//Protocols

let name="John the traitor"
print(name)
let age=32
print(age)
let boolean=true
print(boolean)


struct /*class*/ Shoe:CustomStringConvertible{
    
    var color:String
    var size:Int
    var hasLaces:Bool
    var description: String{
        return "My shoe color is \(color) and its size is \(size) and haslaces:\(hasLaces)"
    }
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
      
    }
}
let myShoe=Shoe(color: "Brown", size: 8, hasLaces: true)
print(myShoe)



//--- Equitable Protocol ----//

struct Employee:Equatable,Comparable,Codable{
    var firstName:String
    var lastName:String
    var jobTitle:String
    var PhoneNumber:Int
    let id:Int
    
    static func ==  (lhs: Employee, rhs: Employee)->Bool{
        return lhs.firstName==rhs.firstName && lhs.lastName==rhs.lastName && lhs.jobTitle==rhs.jobTitle && lhs.PhoneNumber==rhs.PhoneNumber && lhs.id==rhs.id
      
        
    }
    static func < (lhs:Employee,rhs:Employee)->Bool{
        lhs.firstName<rhs.firstName
    }
    init(firstName: String, lastName: String, jobTitle: String, PhoneNumber: Int, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.jobTitle = jobTitle
        self.PhoneNumber = PhoneNumber
        self.id = id
     
    
   
    }
}

//Encoding
let encoder=JSONEncoder()
if let jsonData = try? encoder.encode(emp1) ,
       let jsonString=String(data:jsonData, encoding:.utf8){
           print(jsonString)
       }
struct Company{
    var name:String
    var employees:[Employee]
    init(name: String, employees: [Employee]) {
        self.name = name
        self.employees = employees
    }
}

let emp1=Employee(firstName: "Edward", lastName: "Stompton", jobTitle: "Area Manager", PhoneNumber: 3523611263,id: 1)
let emp2=Employee(firstName: "Robert", lastName: "Strong", jobTitle: "CEO", PhoneNumber: 4875074084,id: 1)
let emp3=Employee(firstName: "John", lastName: "Stuart", jobTitle: "GM", PhoneNumber: 4293428323, id: 1)
let emp4=Employee(firstName: "Raj", lastName: "Singh", jobTitle: "Accountant", PhoneNumber: 48340374203, id: 1)
let employees=[emp1,emp2,emp3,emp4]
let sordtedEmployee=employees.sorted(by: <)

//if currentEmployee == selectedEmployee{
//    print("Enable the edit button")
//}
//else{
//    print("Disable the edit button ")
//}


for employee in sordtedEmployee {
    print(employee)
}


//----codable protocol----//





