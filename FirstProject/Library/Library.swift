//
//  Library.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Library: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
                List {
                    NavigationLink {
                        Playlists()
                    } label: {
                        Label("Playlists", systemImage: "music.note.list")
                    }
                    NavigationLink {
                        Artists()
                    } label: {
                        Label("Artists", systemImage: "music.mic")
                    }
                    NavigationLink {
                        
                    } label: {
                        Label("Albums", systemImage: "square.stack")
                    }
                    NavigationLink {
                        
                    } label: {
                        Label("Songs", systemImage: "music.note")
                    }
                    NavigationLink {
                        
                    } label: {
                        Label("Genres", systemImage: "guitars")
                    }
                    NavigationLink {
                        
                    } label: {
                        Label("Compilations", systemImage: "person.2.crop.square.stack")
                    }
                    NavigationLink {
                        
                    } label: {
                        Label("Composers", systemImage: "music.quarternote.3")
                    }
                    NavigationLink {
                        
                    } label: {
                        Label("Downloaded", systemImage: "arrow.down.circle")
                    }
                }
                .font(.title2)
                .listStyle(.plain)
                .navigationTitle("Library")
//                Text("Recently Added")
//                LazyVGrid(columns: columns) {
//                    ForEach(0...24, id: \.self) { i in
//                        Album
//                    }
//                }
//                .padding()
        }
    }
    
//    var Album: some View {
//        VStack(alignment: .leading) {
//            Image("Image")
//                .resizable()
//                .clipShape(RoundedRectangle(cornerRadius: 15))
//                .aspectRatio(1, contentMode: .fill)
//                .frame(maxWidth: 200, maxHeight: 200)
//            Text("Floral Sense - The 1st Album")
//                .lineLimit(1)
//            Text("YESUNG")
//                .foregroundColor(.gray)
//        }
//    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
