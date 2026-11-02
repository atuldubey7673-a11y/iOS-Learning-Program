//
//  Orthogonal View.swift
//  SWIFT 105
//
//  Created by C4 on 29/10/26.
//

import SwiftUI

struct Orthogonal_View: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                ForEach(0..<10){
                    Text("restaurants \($0)")
                        .font(.largeTitle)
                    Spacer()
                    ScrollView(.horizontal){
                        HStack(spacing:10){
                            ForEach(0..<10){
                                Text("food \($0)")
                                    .frame(width: 300,height: 300)
                                    .background(.pink.opacity(0.5))
                            }
                        }
                    }
                }
            }
            
            
        }
    }
    
}
#Preview {
    Orthogonal_View()
}
