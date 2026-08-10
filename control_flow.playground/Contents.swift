

let watertemp=200
if watertemp >= 100{
    print("water is boiling")
}
else{
    print("water is not boiling")
}
let number = 100
let result = number > 50
print(result)

let israining=true
if israining{
    print("you can go outside")
}



let name="naman"
let mailid="abstract"
if name=="nahan" && mailid=="abstract"{
    print("can login ")
}
else{
    print("cannot login ")
}
 let ispluggedin=true
 let batteryisdown=false
 if ispluggedin || batteryisdown{
    print("can work")
 }

let constanttemp=75
if constanttemp >= 65 && constanttemp <= 75{
    print("temp is perfect")
}
else if constanttemp > 75{
    print("temp is hot")
}
else {
    print("temp is cold")
}
let numberofwheels=2
switch numberofwheels{
    case 0:
    print("cannot work")
    case 1:
    print("unicycle")
    case 2:
    print("bycle")
    default:
    print("too many wheels")
}
let nconstanttemp=1
switch nconstanttemp{
    case 75...100:
    print("temp is perfect")
    case 65...75:
    print("temp is cold")
    case Int.min..<65:
    print("temp is boiling")
    default:
    print("not good")
}

let character="z"
switch character{
    case "a","e","i","o","u","A","E","I","O","U":
    print("it is vowel")
    default:
    print("not vowel")
}



let num1=10
let num2=12
var largest:Int
largest = num1>num2 ? num1:num2
//if n1>n2{
//    print("n1 is larger ")
//}
//else{
//    print("n2 is larger")
//}



