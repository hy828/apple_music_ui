//
//  Radio.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Radio: View {
    
    private var stationsByGenre = RadioCategory.stationsByGenre
    private var topStations = RadioCategory.topStations
    private var worldwideStations = RadioCategory.worldwideStations
    
    var body: some View {
        NavigationStack {
            ScrollView {
                type1
                type2
            }
            .navigationTitle("Radio")
        }
    }
    
    var type1: some View {
        VStack(alignment: .leading) {
            Text("FEATURED EPISODE")
                .font(.caption2)
                .foregroundColor(.secondary)
                .bold()
            Text("The artist on her latest single \"For Granted\".")
                .font(.title2)
            Image("Image")
                .resizable()
                .frame(width: 350, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
    
    var type2: some View {
        VStack {
            HStack {
                Text("Top Stations")
                    .font(.title3)
                    .bold()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    .bold()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(topStations, id: \.id) { i in
                        VStack {
                            ZStack {
                                LinearGradient(colors: i.color, startPoint: .leading, endPoint: .trailing)
                //                    .frame(width: 200, height: 200)
                                    .opacity(0.7)
                                    .overlay {
                                        Rectangle()
                                            .foregroundColor(.gray)
                                            .opacity(0.2)
                                    }
                                Text(i.genre)
                                    .font(.system(size: 90))
                                    .bold()
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                                    .opacity(0.15)
                                    
                                
                                Text(i.genre)
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                    .padding()
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
        }
    }
}

struct Radio_Previews: PreviewProvider {
    static var previews: some View {
        Radio()
    }
}
