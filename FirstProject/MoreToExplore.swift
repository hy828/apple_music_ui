//
//  MoreToExplore.swift
//  FirstProject
//
//  Created by lhy on 2023/4/5.
//

import SwiftUI

struct MoreToExplore: View {
    
    var list: [String]
    
    var body: some View {
        VStack {
            Text("More to Explore")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top, .leading])
                .font(.title2)
                .bold()
            VStack {
                List(0..<list.count, id: \.self) { i in
                        HStack {
                            Text(list[i])
                                .foregroundColor(.red)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 14))
                        }
                }
                .listStyle(.plain)
                .font(.title2)
            }
            .border(.gray)
        }
        
    }
}

struct MoreToExplore_Previews: PreviewProvider {
    static var previews: some View {
        MoreToExplore(list: ["International Pop", "Classical"])
    }
}
