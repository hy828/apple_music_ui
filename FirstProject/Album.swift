//
//  Album.swift
//  FirstProject
//
//  Created by lhy on 2023/3/23.
//

import SwiftUI

struct Album: View {
    
    var i: AlbumDetail
    
    var body: some View {
        VStack {
            ScrollView {
                Image(i.image)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .aspectRatio(1, contentMode: .fill)
                    .frame(maxWidth: 250, maxHeight: 250)
                    .shadow(radius: 3)
                Text(i.title)
                    .font(.title3)
                    .bold()
                NavigationLink {
                    Artist()
                } label: {
                    Text(i.artist)
                        .font(.title3)
                        .foregroundColor(.red)
                }
                Text("\(i.genre) · \(i.year) · Lossless")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .bold()
                HStack {
                    Button() {
                        
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .bold()
                    }
                    Button() {
                        
                    } label: {
                        Label("Shuffle", systemImage: "shuffle")
                            .bold()
                    }
                }
                .buttonStyle(.bordered)
                .foregroundColor(.red)
                List {
                    ForEach(1...4, id: \.self) { i in
                        SongRow
                    }
                }
                .listStyle(.sidebar)
                Section {
                    Text(i.date)
                    Text("\(i.song.count) songs, \(i.duration) minutes")
                    Text("\(i.year) SM Entertainment, Label SJ")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
                .font(.subheadline)
                .padding(.leading)
                Spacer()
                Section {
                    Text("RECORD LABEL")
                        .font(.caption2)
                        .bold()
                        .foregroundColor(.secondary)
                    Text("SM Entertainment")
                        .foregroundColor(.red)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                Spacer()
//                Section {
//                    Text("More By RYEOWOOK")
//                        .font(.title2)
//                        .bold()
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding([.leading, .top])
//                    ScrollView(.horizontal) {
//                        HStack {
//                            ForEach(1...3, id: \.self) { i in
//                                Album
//                            }
//                        }
//                    }
//                    .padding(.leading)
//                }
//                .background(.bar)
            }
        }
    }
    
    var SongRow: some View {
        HStack {
            Text("1")
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
    
//    var Album: some View {
//        VStack(alignment: .leading) {
//            Image("Image")
//                .resizable()
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//                .frame(maxWidth: 180, maxHeight: 180)
//            Text("Floral Sense - The 1st Album")
//                .lineLimit(2)
//        }
//        .frame(width: 180)
//    }
}

struct Album_Previews: PreviewProvider {
    static var previews: some View {
        Album(i: AlbumDetail.data[0])
    }
}
