import UIKit

// tuple and its application

func checkvowel( letter:Character="a")->(Bool,Character){
    switch letter{
    case "a","e","i","o","u":
        print("the letter \(letter) is a vowel")
        return (true,letter)
    default:
        print("the letter \(letter) is not a vowel ")
        return (false,letter)
        
        
    }
        
}
let inputletter :Character="i"
let result=checkvowel(letter:"i") //(true,i)
if result.0 == true{
    print("\(result.1) is a vowel")
}
else{
    print("\(result.0) is not a vowel")
}
print (result)

//checkvowel( letter: "a")
//checkvowel( letter: "l")
//checkvowel("a")
//checkvowel("z")
//checkvowel("t")


// external name and its uses

func studentRegistration(_ name:String, resisteredIn courseName:String)->(String,String){
   print(" \(name) is registered in \(courseName)")
   return  (name,courseName)
    
    
}

studentRegistration("ram", resisteredIn: "isdp")


func multiply(_ first:Int, by second:Int)->Int{
    var result = first * second
    print(result)
    return result
    
}
 multiply(10, by: 20)


// use of inout function

func changeName(name:inout String)/*->String*/{
//    var name=name
      name="amit"
      print(" name is \(name)")
//    return name
        
    
}
     var newname = "ram"
//   var name = changeName(name: "rahul")
     changeName(name: &newname)
     print( "new name is \(newname)")
//   print("new name is \(name)")
 



func teamDetails(teamname:String,teamcaptain:String){
    
}
