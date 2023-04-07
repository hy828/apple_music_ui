//
//  Radio.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

// Radio
struct Radio: View {
    
    let category = ["Top Stations", "Worldwide Stations", "Stations by Genre"]
    let moreToExplore = ["International Pop", "Classical", "Dance", "Alternative & Indie", "Hip-Hop/R&B", "Jazz", "Electronic", "Rock", "Singer/Songwriter"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Type1
                Type2
                MoreToExplore(list: moreToExplore)
            }
            .navigationTitle("Radio")
        }
    }
    
    var Type1: some View {
        VStack(alignment: .leading) {
            Text("FEATURED EPISODE")
                .font(.caption2)
                .foregroundColor(.secondary)
                .bold()
            Text("The artist on her latest single \"For Granted\".")
                .font(.title2)
            Image("For Granted")
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
    
    var Type2: some View {
        VStack {
            ForEach(0..<category.count, id:\.self) { j in
                VStack {
                    HStack {
                        Text(category[j])
                            .font(.title3)
                            .bold()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .top])
                    RadioRow(ind: j)
                }
            }
        }
    }
        
}

struct Radio_Previews: PreviewProvider {
    static var previews: some View {
        Radio()
    }
}
