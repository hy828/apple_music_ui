//
//  Library.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Library: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    private var data = LibraryCategory.data
    @State private var iconWidth: Double = 0
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data, id: \.id) { i in
                    HStack {
                        Image(systemName: i.icon)
                            .foregroundColor(.red)
//                            .sync(with: $iconWidth)
//                            .frame(width: iconWidth)
                        Text(i.title)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .font(.system(size: 14))
                    }
                }
                
            }
            .font(.title2)
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
