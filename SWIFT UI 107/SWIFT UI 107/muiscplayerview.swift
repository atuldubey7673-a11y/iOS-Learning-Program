//
//  muiscplayerview.swift
//  MyApp
//
//  Created by C4 on 02/11/26.
//

import SwiftUI


struct muiscplayerview: View {
   @State private var isPlaying = false
    //music info
    private let songTitle = "summer melody"
    private let artistName = "Student Artist"
    
    
    
    var body: some View {
        VStack{
            Image(systemName: "music.pages.fill")
                .font(.system(size: 100))
                .foregroundStyle(.orange)
            Text("Now Playing")
                .font(.headline)
                .foregroundStyle(.secondary)
            Text(songTitle)
                .font(.title)
                .bold()
            Text(artistName)
                .font(.subheadline)
                .foregroundStyle(.secondary)
            musiccontrolview(isPlaying:
            $isPlaying)
            musicstatusview(isPlaying: isPlaying)
                
        }
    }
}

#Preview {
    muiscplayerview()
}
