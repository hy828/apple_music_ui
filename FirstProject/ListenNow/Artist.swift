//
//  Artist.swift
//  FirstProject
//
//  Created by lhy on 2023/3/26.
//

import SwiftUI

struct Artist: View {
    
    let rows = [GridItem(.fixed(50)), GridItem(.fixed(50)), GridItem(.fixed(50)), GridItem(.fixed(50))]
    
    var body: some View {
        VStack {
            ScrollView {
                ZStack {
                    Image("Image")
                        .resizable()
                        .frame(height: 400)
                    Text("RYEOWOOK")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                        .padding()
                    Image(systemName: "play.circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 35))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        .padding()
                }
                HStack {
                    Image("Image")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    VStack(alignment: .leading) {
                        Text("28 JUL 2022")
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("It Was All a Mistake (Original Soundtrack), Pt. 1 - Single")
                        Button() {
                            
                        } label: {
                            Image(systemName: "plus")
                                .bold()
                            Text("Add").bold()
                        }
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.capsule)
                        .foregroundColor(.red)
                    }
                    .padding(.leading, 10)
                }
                .padding()
                Section {
                    Text("Top Songs")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows) {
                            ForEach(1...8, id: \.self) { i in
                                SongRow
                            }
                        }
                    }
                    .padding(.bottom)
                }
                .padding(.leading)
                Section {
                    Text("Albums")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top])
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1...3, id: \.self) { i in
                                Album
                            }
                        }
                    }
                    .padding(.leading)
                }
                Section {
                    Text("Music Videos")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top])
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1...3, id: \.self) { i in
                                MusicVideo
                            }
                        }
                    }
                    .padding(.leading)
                }
                Section {
                    Text("Singles & EPs")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top])
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1...3, id: \.self) { i in
                                Album
                            }
                        }
                    }
                    .padding(.leading)
                }
                Section {
                    Text("Appears On")
                        .font(.title2)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .top])
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(1...3, id: \.self) { i in
                                Album
                            }
                        }
                    }
                    .padding(.leading)
                }
                .background(.bar)
            }
        }
        .ignoresSafeArea()
    }
    
    var SongRow: some View {
        HStack {
            Image("Image")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            VStack(alignment: .leading) {
                Text("The Little Prince")
                Text("The Little Prince - The 1st Mini Album - EP")
                    .lineLimit(1)
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            .padding(.leading, 5)
            Image(systemName: "ellipsis")
                .padding(.horizontal, 7)
        }
    }
    
    var Album: some View {
        VStack(alignment: .leading) {
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: 180, maxHeight: 180)
            Text("Floral Sense - The 1st Album")
                .lineLimit(2)
        }
        .frame(width: 180)
    }
    
    var MusicVideo: some View {
        VStack(alignment: .leading) {
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(maxWidth: 300, maxHeight: 200)
            Text("Drunk in the morning")
                .lineLimit(1)
            Text("2019")
                .foregroundColor(.secondary)
        }
    }
}

struct Artist_Previews: PreviewProvider {
    static var previews: some View {
        Artist()
    }
}
