//
//  RadioRow.swift
//  FirstProject
//
//  Created by lhy on 2023/4/5.
//

import SwiftUI
import UIKit

// Radio电台横向列表
struct RadioRow: View {
    
    var ind: Int
    var data = [RadioCategory.topStations, RadioCategory.worldwideStations, RadioCategory.stationsByGenre]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(data[ind], id: \.self) { i in
                    VStack(alignment: .leading) {
                        Image(i.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 175, height: 175)
                            .clipShape(RoundedRectangle(cornerRadius: 7))
                        Text(i.title)
                            .lineLimit(1)
                            .foregroundColor(.black)
                        Text(i.group)
                            .foregroundColor(.secondary)
                            .lineLimit(1)
                    }
                    .frame(maxWidth: 175)
                }
            }
        }
        .scenePadding(.leading)
    }
}

struct RadioRow_Previews: PreviewProvider {
    static var previews: some View {
        RadioRow(ind: 0)
    }
}
