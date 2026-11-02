//import SwiftUI
//import Playgrounds
//
////---- Data In SwiftUI ----//
//// @state decides changes the storage form transient view to a shared storage framework
//// @binding creates a two way connection between view that stores data and child view that needs to read and write data
//
//struct ContentView: View {
//    var name : String = "Admin"
//    @State var backgroundcolor : Color = .yellow /* view is a function of state */
//    @State var searchText = ""
//    @State private var selectedColor = "red"
//    let colors = ["red","green","white"]
//    @State private var isPlaying = false
//    
//    
//    
//    var body: some View {
//        //        Text("\(name)").onAppear{
//        //                print("view apperared")
//        
//        //            }
//        //        ZStack{
//        //            backgroundcolor
//        //            Button("change color"){
//        //                backgroundcolor = .red
//        //            }
//        //        }
//        //        .ignoresSafeArea()
//        //        TextField("enter the string", text: $searchText)
//        //        Text("user entered :\(searchText)")
//        //        VStack{
//        //            Picker("color", selection: $selectedColor){
//        //                ForEach(colors,id: \.self){ color in
//        //                    Text(color)
//        //                }
//        //            }
//        //            .pickerStyle(.segmented)
//        //
//        //        }
//        
//        
//        
//        
//        VStack{
//            Button{
//                isPlaying.toggle()
//            }label: {
//                Image(systemName: isPlaying ?
//                      "paude.circle.fill":"play.circle.fill")
//                .font(.largeTitle)
//                
//            }
//            
//        }
//        VStack{
//            colorpickerview(colorPickerData: $selectedColor)
//        }
//        
//    }
//        
//    }
//    struct searchBar:View{
//       @Binding var searchText:String
//        var body : some View {
//            Text(searchText)
//            
//        }
//    
//    }
//struct colorpickerview : View {
//    @Binding var colorPickerData :  String
//    
//    let colors = ["red","green","yellow"]
//    
//    var body: some View{
//        Picker("color", selection: $colorPickerData){
//            ForEach(colors,id: \.self) { colors in
//                Text(colors)
//            }
//            
//            
//        }
//        
//        
//    }
//}
//
//
//#Preview {
//    ContentView()
//}
//
//
//
