import SwiftUI
import Playgrounds

//----- data model ----//
struct Workout : Identifiable {
    //need a unique property for using foreach loop
    
    let id = UUID()
    var workoutImage: String
    var workoutTheme: Color
    var workoutName: String
    var workoutBenefit: String
    var workoutDuration: Int
    
    
}
//                          **CUSTOM VIEW*
struct workoutCardView : View {
    
    var workout:Workout
    //we need different properties of each card i.e
    
    
//    var workoutImage: String
//    var workoutTheme: Color
//    var workoutName: String
//    var workoutBenefit: String
//    var workoutDuration: Int
    
    var body: some View {
        
        
        HStack{
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .fill(workout.workoutTheme)
                    .frame(width:75, height:75)
                Image(systemName:workout.workoutImage)
                    .font(.largeTitle)
                    .foregroundStyle(workout.workoutTheme)
                
            }
            VStack(alignment: .leading) {
                Text(workout.workoutName)
                    .font(.headline)
                    .bold()
                HStack {
                    Text(workout.workoutBenefit)
                        .font(.subheadline)
                        .bold()
                        .foregroundStyle(.secondary)
                    Circle()
                        .frame(width:5, height:5)
                        .foregroundStyle(.secondary)
                    Text("\(workout.workoutDuration)min")
                        .font(.subheadline)
                        .bold()
                        .foregroundStyle(.secondary)
                }
            }
            Spacer()
            
            Button{
                //
            } label: {
                Text("Start")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(.quaternary)
        .clipShape(.rect(cornerRadius: 12))
        
    }
    
}
//                            ********


struct ContentView: View {
    

        var workouts = [
            Workout(workoutImage: "figure.yoga", workoutTheme: .blue, workoutName: "Yoga Poses", workoutBenefit: "flexibility", workoutDuration: 25),
            Workout(workoutImage: "bicycle", workoutTheme: .red, workoutName: "cycle ride", workoutBenefit: "high endurance", workoutDuration: 30),
            Workout(workoutImage: "figure.open.water.swim", workoutTheme: .brown, workoutName: "mountain hike", workoutBenefit: "greater strength", workoutDuration: 40)
        ]
    
    
    
    var body: some View {
        ScrollView{
            VStack{
                // use of foreach loop
                ForEach(workouts){
                    workout in workoutCardView(workout: workout)
                }
            }
        }
//
//        workoutCardView(workoutImage:"figure.yoga", workoutTheme: .blue ,workoutName: "yoga",workoutBenefit: "Flexibility", workoutDuration: 20)
//        workoutCardView(workoutImage:"figure.outdoor.cycle", workoutTheme: .orange ,workoutName: "Cycling",workoutBenefit: "Cardio", workoutDuration: 30)
//        workoutCardView(workoutImage:"figure.open.water.swim", workoutTheme: .green ,workoutName: "swimming",workoutBenefit: "strength", workoutDuration: 50)
        
        
        
               
            //*** VSTACK ****
        
    
//        VStack(alignment: .leading, spacing: 20) {
//            Text("This")
//                .font(.largeTitle)
//                .bold()
//            Text("is")
//                .font(.largeTitle)
//                .bold()
//            Text("VStack")
//                .font(.largeTitle)
//                .bold()
//            Color(.darkGray)
//                .frame(width: 20, height:30)
//            Image(systemName: "star")
//
//        }
//        Divider()
        
        
            //*** HSTACK  ***
        
        
//        HStack(alignment: .center, spacing: 10) {
//            Text("This")
//                .font(.largeTitle)
//                .bold()
//            Text("is")
//                .font(.largeTitle)
//                .bold()
//            Text("HStack")
//                .font(.largeTitle)
//                .bold()
//        }
//        Divider()
        
        
                 //**  ZSTACK  ***
        
        
        //ZStack(alignment: .center) {
//            RoundedRectangle(cornerRadius: 200)
//                .fill(.black)
//                .frame(width:550,height:550)
//                .zIndex(1)
////            Color(.darkGray)
////                .frame(width:400, height:400)
////            Color(.black)
////                .frame(width:350, height:350)
//            Image(systemName:"fork.knife")
//                .font(.largeTitle)
//                .foregroundStyle(.gray)
//                .zIndex(3)  //tells us about the sequence of each layer.
//            RoundedRectangle(cornerRadius: 30)
//                .fill(.white)
//                .frame(width:80, height:80)
//                .zIndex(2)
//                // .offset(x:20,y:30)  moving in different direction
//}
//        ZStack(alignment: .bottomTrailing) {
//            Image("Image")
//                .resizable()
//                .frame(width:250, height:250)
//                .clipShape(.rect(cornerRadius: 12))
//
//            Label("veg", systemImage: "leaf")
//                .padding()
//                .background(.green)
//                .clipShape(.capsule)
//                .offset(x:-5, y:-5  )
//        }
       //*************//
        
        
        
        
        
    }
}

#Preview {
    ContentView()
}
