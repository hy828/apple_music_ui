//
//  MoreToExplore.swift
//  FirstProject
//
//  Created by lhy on 2023/4/5.
//

import SwiftUI

struct MoreToExplore: View {
    
    var list: [String]
    @Environment(\.defaultMinListRowHeight) var minRowHeight
    
    var body: some View {
        VStack {
            Text("More to Explore")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 30)
                .padding(.leading)
                .font(.title2)
                .bold()
            Divider()
                .padding(.leading)
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
            .frame(minHeight: minRowHeight * CGFloat(list.count))
            .offset(y: -5)
            Spacer(minLength: 60)
        }
        
    }
}

struct MoreToExplore_Previews: PreviewProvider {
    static var previews: some View {
        MoreToExplore(list: ["International Pop", "Classical"])
    }
}
