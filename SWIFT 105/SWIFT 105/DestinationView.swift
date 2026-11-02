////
////  DestinationView.swift
////  SWIFT 105
////
////  Created by C4 on 29/10/26.
////
//import SwiftUI
//import Playgrounds
//
//struct Destination : Identifiable {
//    let id = UUID()
//    var Image: String
//    var place: String
//    var area: String
//    var country: String
//    var rating: String
//    var reviews: String
//    var ratingSymbol: String
//    var pricing: String
//    var pricingSymbol: String
//    
//    
//}
//struct DestinationCardView : View {
//    var destination : Destination
//    
//    var body: some View {
//        VStack(alignment: .leading, spacing: 15) {
//            ZStack(alignment: .topTrailing){
//                Image(destination.Image)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(height:200)
//                    .clipShape(.rect(cornerRadius: 20))
//                
//                Text(destination.place)
//                    .padding(8)
//                    .foregroundStyle(.white)
//                    .background(.black.opacity(0.7))
//                    .clipShape(.capsule)
//                    .padding(10)
//            }
//            HStack {
//                VStack(alignment: .leading,spacing: 5){
//                    Text(destination.area)
//                        .font(.headline)
//                        .bold()
//                    Text(destination.country)
//                        .font(.subheadline)
//                        .bold()
//                        .foregroundStyle(.secondary)
//                }
//                Spacer()
//                
//                
//            }
//            
//            
//            HStack{
//                Label(destination.rating, systemImage: destination.ratingSymbol)
//                    .foregroundStyle(.secondary)
//                Spacer()
//                Text(destination.reviews)
//                    .foregroundStyle(.secondary)
//                Spacer()
//                Label(destination.pricing, systemImage: destination.pricingSymbol)
//                    .foregroundStyle(.secondary)
//                
//            }
//            
//            Divider()
//            
//            Button {
//                //
//            } label: {
//                Text("view details")
//                    .frame(maxWidth: .infinity)
//            }
//            .buttonStyle(.borderedProminent)
//        }
//        .padding()
//        .background(.quaternary)
//        .frame(width: 350, height:390)
//        .clipShape(.rect(cornerRadius: 40))
//        
//    }
//}
//    
//    struct ContentView: View {
//        
//        var destinations = [Destination( Image:"jaisalmer",
//                                         place: "Jaisalmer",
//                                         area: "Rajasthan",
//                                         country: "India",
//                                         rating: "4.7",
//                                         reviews: "17k reviews",
//                                         ratingSymbol: "star",
//                                         pricing: "2000",
//                                         pricingSymbol: "indianrupeesign"),
//                            Destination( Image:"mussorie",
//                                         place: "mussorie",
//                                         area: "Uttrakhand",
//                                         country: "India",
//                                         rating: "4.9",
//                                         reviews: "19k reviews",
//                                         ratingSymbol: "star",
//                                         pricing: "5000",
//                                         pricingSymbol: "indianrupeesign")]
//        var body: some View {
//            ScrollView {
//                    VStack{
//                        ForEach(destinations) {
//                            destination in DestinationCardView(destination: destination)
//                        }
//                    }
//                }
//            }
//        }
//    
//    
//    
//    #Preview {
//        ContentView()
//    }
//
//
