import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ZStack(alignment: .topTrailing) {
                Image("Image") // Make sure you have an image named "Image" in your assets
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipShape(.rect(cornerRadius: 20))
                
                Text("Historic Destination")
                    .padding(8)
                    .foregroundStyle(.white)
                    .background(.black.opacity(0.7))
                    .clipShape(.capsule)
                    .padding(10)
            }
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Jaisalmer")
                        .font(.headline)
                        .bold()
                    Text("Rajasthan, India")
                        .font(.subheadline)
                        .bold()
                        .foregroundStyle(.secondary)
                }
                Spacer()
            }
            
            HStack {
                Label("4.7", systemImage: "star")
                    .foregroundStyle(.secondary)
                Spacer()
                Text("17k reviews")
                    .foregroundStyle(.secondary)
                Spacer()
                Label("2000", systemImage: "indianrupeesign")
                    .foregroundStyle(.secondary)
            }
            
            Divider()
            
            Button {
                // Action goes here
            } label: {
                Text("view details")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(.quaternary)
        .frame(width: 350, height: 390)
        .clipShape(.rect(cornerRadius: 40))
    }
}

#Preview {
    ContentView()
}
