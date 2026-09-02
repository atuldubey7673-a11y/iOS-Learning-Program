//import UIKit
//
//class Animal{
//    var name:String
//    var age:Int
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//}
//
//class dog:Animal{
//    var dogBreed:String
//    var dogName:String
//    init(dogBreed: String, dogName: String) {
//        self.dogBreed = dogBreed
//        self.dogName = dogName
//        super.init(name: dogName, age: 0)
//    }
//}
//
//class cat:Animal{
//    var catBreed:String
//    var catNmae:String
//    init(catBreed: String, catNmae: String) {
//        self.catBreed = catBreed
//        self.catNmae = catNmae
//        super.init(name: catNmae, age: 0)
//    }
//}
//class bird:Animal{
//    var birdBreed:String
//    var birdNmae:String
//    init(birdBreed: String, birdNmae: String) {
//        self.birdBreed = birdBreed
//        self.birdNmae = birdNmae
//        super.init(name: birdNmae, age: 0)
//    }
//    
//}
//
//func getPet()->Animal{
//    var someAnimal = dog(dogBreed: "labrador", dogName: "rocky")
//    return someAnimal
//}
//
//var myfirstPet=getPet()
//
//if myfirstPet is dog{
//    print("my first pet is a dog")
//}
//else if myfirstPet is cat{
//    print("my first pet is a cat")
//}
//else{
//    print("my first pet is a cat ")
//}
//
//var somepets = [dog(dogBreed: "german shepard", dogName: "balboa"),
//                bird(name: "humming bird", age: 3)
//                ]
//                    
//var dogCount=0
//var catCount=0
//var birdCount=0
//
//
//for animals in somepets {
//    if animals is dog{
//        dogCount=dogCount+1
//        
//    }
//    else if animals is bird{
//        birdCount=birdCount+1
//        
//    }
//    
//}
//
//
//print("we have \(dogCount) dogs , \(catCount) cats and \(birdCount) birds ")
//
//func walkThedog(dog:dog){
//    print(" the dog is being walked")
//    
//}
//
//
//func cleanTheLitter(cat:cat){
//    print("the litter is being cleaned")
//}
//
//
//func cleanTheCage(bird:bird){
//    print("the cage is being cleaned")
//}
//
//
//// take the pet responsibility based on the type of pet
//
//for pet in somepets{
//    if pet is dog{
//        walkThedog(dog: pet)
//    }
//}
//
// //---- conditional typecasting----//
//for pets in somepets {
//    if let dogpet = pets as? dog{
//        walkThedog(dog: dogpet)
//    }
//    else if let catpet = pets as? cat{
//        cleanTheLitter(cat: catpet)
//    }
//    else if let birdpet = pets as? bird{
//        cleanTheCage(bird: birdpet)
//    }
//    
//}
//
////----forceful typecasting----//
//var someDog = dog(dogBreed: "stray", dogName: "john")
////walkThedog(dog: someDog as! dog)
//
////---- use if any to type erase , function can also be used---//
//
//var someCollection:[Any] = [10,"Ram",89.37]
//
//
//for item in someCollection {
//    if item is Int{
//        print("item is of type integer :\(item)")
//        
//    }
//    else if item is String{
//        print("the item is of type string ;\(item)")
//        
//    }
//    else if item is Double{
//        print("the item is of type double :\(item)")
//    }
//}
//
//
////---any object vs any----//
//var anotherCollection:[AnyObject]=[Animal(name: "someanimal", age: 33),Animal(name: "someanimal", age: 32)]
//        
//
//

class Animal{
    var animalName : String
    var animalAge : Int
    
    init(name:String,age:Int){
        self.animalName = name
        self.animalAge = age
    }
}
class cat : Animal{
    var catBreed : String
    var catName : String
    var catAge : Int
    init(catBreed : String , catName: String, catAge: Int) {
        self.catBreed = catBreed
        self.catName = catName
        self.catAge = catAge
        super.init(name: " ", age: 1)
    }
}
class bird : Animal{
    var birdName : String
    var birdAge : Int
    init(birdName: String, birdAge: Int) {
        self.birdName = birdName
        self.birdAge = birdAge
        super.init(name: " ", age: 1)
    }
}
class dog : Animal{
    var dogName : String
    var dogAge : Int
    init(dogName: String, dogAge: Int) {
        self.dogName = dogName
        self.dogAge = dogAge
        super.init(name: " ", age: 1)
    }
}
class lion : Animal{
    var lionAge : Int = 1
    var lionName : String = " "
}
func getPet() -> Animal{
    var someAnimal = dog(dogName: "Husky", dogAge: 2)
    return someAnimal
}

var someCat = cat(catBreed : "Persian",catName: "Lucy", catAge: 2)
print(someCat.catName)
print(someCat.catAge)
var myFirstPet = getPet()

//Type Inspection is "is"
if myFirstPet is dog{
    print("My first pet is a dog")
}else if myFirstPet is cat{
    print("My first pet is a cat")
}else{
    print("My first pet is a bird")
}
var somePets = [cat(catBreed : "Persian ", catName: "Tom", catAge: 1) , dog(dogName: "Billu", dogAge: 5) , dog(dogName: "Lucy", dogAge: 1) , bird(birdName: "Wayne", birdAge: 2)]


var dogCount = 0
var catCount = 0
var birdCount = 0

for pet in somePets{
    if pet is dog{
        dogCount += 1
    }else if pet is cat{
        catCount += 1
    }else if pet is bird{
        birdCount += 1
    }else{
        print("Client has some exotic animal!")
    }
}
print("There are \(dogCount) dogs, \(catCount) cats, and \(birdCount) birds in my house")
func walkTheDog(dog : dog){
    print("The dog is being walked!")
}
func walkTheCat(cat : cat){
    print("The cat is being walked!")
}
func cleanTheCage(bird : bird){
    print("The clean is being cleaned!")
}
func cleanTheLitter(dog : dog){
    print("The litter is being cleaned!")
}
for pets in somePets{
    if let dogPet = pets as? dog{
        walkTheDog(dog: dogPet)
    }else if let catPet = pets as? cat{
        walkTheCat(cat: catPet)
    }else if let birdPet = pets as? bird{
        cleanTheCage(bird: birdPet)
    }else{
        print("Client has some exotic pet!")
    }
}

var someStreetDog = dog(dogName: "billu", dogAge: 4)

print()
var someCollection : [Any] = [18,"naman",20.5,true]
for collection in someCollection {
    if collection is Int{
        print("The Integer in the collection is \(collection)")
    }else if collection is Double{
        print("The Double in the collection is \(collection)")
    }else if collection is String{
        print("The String in the collection is \(collection)")
    }else if collection is Bool{
        print("The Boolean in the collection is \(collection)")
    }else{
        print("Some unkown type!")
    }
}


//AnyObject as Any

var anotherCollection : Any = [Animal(name: "Lion", age: 5), Animal(name: "Cat", age: 3),10,"Dog",true]


//----Guard----//

//guard condition else{
//    false:execute some code
//}
//true code
