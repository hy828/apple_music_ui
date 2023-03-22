//
//  Library.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Library: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Text("Playlists")
                    Text("Artists")
                    Text("Albums")
                    Text("Songs")
                    Text("Genres")
                    Text("Compilations")
                    Text("Composers")
                    Text("Downloaded")
                }
                .listStyle(.plain)
                Text("Recently Added")
                    .font(.title2.bold())
                    .frame(width: .infinity, height: .infinity, alignment: .topLeading)
                    .border(.red)
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150, alignment: .topLeading)
                        .padding()
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150, alignment: .topLeading)
                        .padding()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150, alignment: .topLeading)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 150, alignment: .topLeading)
                }
            }
            .navigationTitle("Library")
        }
    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
