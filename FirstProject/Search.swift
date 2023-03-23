//
//  Search.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Search: View {
    
    @State private var searchText: String = ""
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("Browse Categories")
                    .font(.title3)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(EdgeInsets(top: 5, leading: 15, bottom: -15, trailing: 0))
                LazyVGrid(columns: columns) {
                    ForEach(0...24, id: \.self) { i in
                        Category(value: i)
                    }
                }
                .padding()
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Artists, Songs, Lyrics and More")
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
