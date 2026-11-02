//
//  musiccontrolview.swift
//  MyApp
//
//  Created by C4 on 02/11/26.
//

import SwiftUI

struct musiccontrolview: View {
    @Binding var isPlaying : Bool
    var body: some View {
        Button{
            isPlaying.toggle()
        }label: {
            Label(isPlaying ? "Pause" : "Play",
            systemImage: isPlaying ?
                  "pause.circle.fill" : "play.circle.fill")
            .font(.title)
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    musiccontrolview(isPlaying: .constant(false))
}
