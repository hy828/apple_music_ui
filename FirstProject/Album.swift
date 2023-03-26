//
//  Album.swift
//  FirstProject
//
//  Created by lhy on 2023/3/23.
//

import SwiftUI

struct Album: View {
    var body: some View {
        VStack {
            ScrollView {
                Image("Image")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .aspectRatio(1, contentMode: .fill)
                    .frame(maxWidth: 200, maxHeight: 200)
                Text("Drunk on love - The 2nd Mini Album")
                Text("RYEOWOOK")
                Text("K-Pop · 2019 · Lossless")
                HStack {
                    Button() {
                        
                    } label: {
                        Label("Play", systemImage: "play.fill")
                    }
                    Button() {
                        
                    } label: {
                        Label("Shuffle", systemImage: "shuffle")
                    }
                }
                .buttonStyle(.bordered)
                List {
                    Text("")
                }
                .listStyle(.sidebar)
                Text("1 January 2019")
                Text("4 songs, 15 minutes")
                Text("2019 SM Entertainment, Label SJ")
                Text("RECORD LABEL")
            }
        }
    }
}

struct Album_Previews: PreviewProvider {
    static var previews: some View {
        Album()
    }
}
