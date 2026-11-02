//
//  musicstatusview.swift
//  MyApp
//
//  Created by C4 on 02/11/26.
//

import SwiftUI

struct musicstatusview: View {
    let isPlaying : Bool
    var body: some View {
        HStack{
            Image(systemName:isPlaying ?
                  "speaker.wave.2.fill" : "speaker.slash.fill")
            .font(.headline)
            Text(isPlaying ? "status:playing":
            "status:pause")
            .foregroundStyle(isPlaying ? .green: .secondary)
        }
        
    }
}

#Preview {
    musicstatusview(isPlaying: false)
}
