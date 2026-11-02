import SwiftUI
import Playgrounds



// --- a custom modifier----//
struct Title:ViewModifier{
    func body(content: Content) -> some View {
        
        content
            .font(.largeTitle)
            .foregroundStyle(.black)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
            .opacity(0.5)
    }
}


struct ContentView: View {
    var body: some View {
        ////        Text("Hello, world!")
        //            .font(.largeTitle)
        //            .fontWeight(.heavy)
        //            .foregroundStyle(.blue)
        //            .foregroundStyle(.secondary) //used to depict less important view
        ////        Text("The house of aragon was last to fall , in the series of battles that followed the rise of legolas")// how to set the aligment
        //            .lineSpacing(35)
        //            .kerning(.pi)
        //            .multilineTextAlignment(.center)
        ////            .lineLimit(1) // use by removing linespacing
        //            .textCase(.uppercase) // or can use lowecase also
        //            .underline()
        //            //.strikethrough()
        //        Image("Image")
        //            .resizable()
        //            .frame(width: 300,height: 300)
        ////            .scaledToFit()  // will dispaly complete image as per its aspects ratio but can leave space
        ////            .scaledToFill() //will occupy whole space and will maintains the ratio
        //            .clipShape(RoundedRectangle(cornerRadius: 50))
        
        
        
        //----- card designing ------//
        // color - is expensive that means it will cover the whole layout
        
        //        Color(.blue)
        //            .frame(height:300)
        //            .clipShape(RoundedRectangle(cornerRadius: 40))
        //            .opacity(0.7)
        
        
        
        Text(" greetings to you ")
            .modifier(Title())
        
        
        
        Rectangle()
            .fill(.green)
            .opacity((0.5))
            .frame(width:350,height:200)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay{
                
                Circle()
                    .fill(.orange)
                
                
                    .overlay{
                        
                        Image("Noodles") //used the image code above and just paste it  here
                            .resizable()
                        
                            .frame(width:100,height:100)
                            .clipShape(Circle())
                        
                        
                    }
                    .frame(width:100,height:100)
            }
        HStack{
            VStack{
                Text("Noodle Bowl")
                Text("10 min")
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Text("200 Rupees")  .bold()
        }
        HStack{
            Text("Delivery time")
            Spacer()
            Text("30 Min") .foregroundStyle(.green)
        }
        Button{
            print("Noodle bowl added ")
            
        }label: {
            Label("Add to cart ", systemImage: "cart.badge.plus")
            
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundStyle(.black)
        }
        .buttonStyle(.borderedProminent)
        .tint(.blue)
        .opacity(0.7)
        
    }
}

#Preview {
    ContentView()
}


#Playground {
    _ = 1 + 2
}


