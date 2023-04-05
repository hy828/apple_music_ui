//
//  RadioRow.swift
//  FirstProject
//
//  Created by lhy on 2023/4/5.
//

import SwiftUI
import UIKit

struct RadioRow: View {
    
    var ind: Int
    var data = [RadioCategory.topStations, RadioCategory.worldwideStations, RadioCategory.stationsByGenre]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(data[ind], id: \.self) { i in
                    VStack(alignment: .leading) {
                        ZStack {
                            LinearGradient(colors: i.color, startPoint: .leading, endPoint: .trailing)
                                .opacity(0.7)
                                .overlay {
                                    Rectangle()
                                        .foregroundColor(.gray)
                                        .opacity(0.2)
                                }
                            Text(i.genre)
                                .font(.title3)
                                .bold()
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                .padding()
//                            UISimpleTextPrintFormatter(text: i.genre)
                            Text(i.genre)
                                .font(.system(size: 90))
                                .bold()
                                .frame(maxHeight: .infinity, alignment: .bottom)
                                .opacity(0.1)
                        }
                        .frame(width: 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                        Text(i.title)
                            .lineLimit(1)
                            .foregroundColor(.black)
                        Text(i.group)
                            .foregroundColor(.secondary)
                    }
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
