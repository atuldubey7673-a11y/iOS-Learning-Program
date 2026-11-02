//
//  AppStoreReplica.swift
//  SWIFT 105
//
//  Created by C4 on 29/10/26.
//

import SwiftUI

struct AppStoreReplica: View {
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                HStack{
                    Text("Apps")
                        .font(.largeTitle)
                        .bold()
                    
                    Spacer()
                    
                    Image("Image")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(.circle)
                    
                }
                
                ScrollView(.horizontal){
                    HStack{
                        ForEach(1..<10) { i in
                            Label("Category", systemImage: "\(i).circle.fill")
                                .padding(5)
                                .background(.secondary)
                                .clipShape(.capsule)
                        }
                    }
                }
                
                Spacer()
                
                Text("CONTEST TEST ")
                    .font(.caption)
                Text("Announcement title which can be very long")
                    .font(.title)
                
                
                ZStack{
                    RoundedRectangle(cornerRadius: 30 )
                        .fill(.blue)
                        .frame(width: 400,height: 250)
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.red)
                        .frame(width:80,height: 50)
                    Image(systemName: "ellipses.circle")
                        .foregroundStyle(.black)
                        
                    
                        
                    
                }
            }
            .padding()
          
        }
    }
    
}
#Preview {
    AppStoreReplica()
}
