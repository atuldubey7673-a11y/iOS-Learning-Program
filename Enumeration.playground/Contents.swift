import UIKit

// keyword - enum

enum compassPoint{
    case north , south , east , west
}

var directionName = compassPoint.east
var directionName1:compassPoint = .east
directionName = .north


var  compassHeading:compassPoint = .west

switch compassHeading{
    
case .west:
    print("heading west ")
case .north:
    print("heading north")
default:
    print("heading nowhere")
}
  // how it helps in type safety //

//struct movie{
//    var name:String
//    var releaseYear:Int
//    var genre:String


//
//let firstMovie=movie(name: "green mile", releaseYear: 2000, genre: "adeventore") //--see that genre spelling is incorrect--//

enum Genre{
    case scifi,animated,thriller,revenge // we made a enum as we have fixed type/number of genre
}
struct movie{
    var name:String
    var releaseYear:Int
    var genre:Genre // pass the enum type here as Genre
}

var firstMovie=movie(name: "Mayday", releaseYear: 2026, genre: .thriller) // helps to get the fixed genre values using .operator enhancing typesafety

print(firstMovie)

