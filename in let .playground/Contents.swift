import UIKit
//--- neil coercinng operator
var mystring:String? = "nominee"
print(mystring)
if mystring != nil{
    print("hello today")
}
else{
    print("no value")
}
   


struct Book{
    var name:String
    var publicationYear:Int?
    
}
let firstBook=Book(name: "the silk road", publicationYear: 2000)
let secondBook=Book(name: "south road", publicationYear: 1859)
let unpublishedBook=Book(name: "the road not taken ", publicationYear: 2005)


if firstBook.publicationYear != nil{
    let year = firstBook.publicationYear
    print(year)
}
else{
    print("the book is not published")
}
if let unwrappedPublicationYear=unpublishedBook.publicationYear{
    print("the book is published in year \(unwrappedPublicationYear)")
}
else{
    print("the book is  not published")
}


let string = "123"
let possibleNUmber = Int(string)
print(possibleNUmber)

func fullname(firstName:String ,
     middleName:String? ,
          lastName:String){
    print(" the name is \(firstName) \(middleName ?? "") \(lastName)")
}
fullname(firstName: "ram", middleName: nil, lastName: "singh")


//-----failable initializers-----//
struct toddler{
    var name:String
    var monthsOld:Int
    init?(name: String, monthsOld: Int) {
        if monthsOld > 12 || monthsOld < 36 {
            return nil
        }
        else{
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}
 
let firstToddler=toddler(name: "johana", monthsOld: 10)
if let mytoddler =  firstToddler {
    print(" \(mytoddler.name) is \(mytoddler.monthsOld) months old ")
}
else{
    print("the child is not toddler")
}
struct Address{
    var buildingNumber:String
    var streetname:String
    var apartmentNumber:String?
}
struct Residence{
    var address :Address?
}
struct Person{
    var age:Int
    var residence:Residence?
}


let address=Address(buildingNumber: "s1", streetname: "anand road", apartmentNumber: "45A")

let residence=Residence(address: address)
let person=Person(age: 40, residence: residence)
if let theResidence=person.residence{
    if let theAddress=theResidence.address{
        if let theApartNumber=theAddress.apartmentNumber{
            print("he lives in apartment number \(theApartNumber)")
        }
    }
}
if let apartmentNum=person.residence?.apa
