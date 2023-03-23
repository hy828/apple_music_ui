//
//  Artists.swift
//  FirstProject
//
//  Created by lhy on 2023/3/23.
//

import SwiftUI

struct Artists: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                Text("KYUHYUN")
            }
            .listStyle(.plain)
            .navigationTitle("Artists")
            .searchable(text: $searchText, prompt: "Find in Artists")
        }
    }
}

struct Artists_Previews: PreviewProvider {
    static var previews: some View {
        Artists()
    }
}
