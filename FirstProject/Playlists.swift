//
//  Playlists.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Playlists: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                Text("Playlists 1")
            }
            .navigationTitle("Playlists")
            .searchable(text: $searchText)
        }
    }
}

struct Playlists_Previews: PreviewProvider {
    static var previews: some View {
        Playlists()
    }
}
