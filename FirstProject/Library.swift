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
            List{
                Section {
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
                Section(header: Text("Recently Added")) {
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
            }
            .listStyle(.plain)
            .navigationTitle("Library")
        }
    }
}

struct Library_Previews: PreviewProvider {
    static var previews: some View {
        Library()
    }
}
