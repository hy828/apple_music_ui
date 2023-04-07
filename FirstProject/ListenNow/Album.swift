//
//  Album.swift
//  FirstProject
//
//  Created by lhy on 2023/3/23.
//

import SwiftUI

// Album: from Listen Now
struct Album: View {
    
    var i: AlbumDetail
    var albums = AlbumDetail.recentlyPlayed
    @Environment(\.defaultMinListRowHeight) var minRowHeight
    
    var body: some View {
        VStack {
            ScrollView {
                Cover
                Information
                Songs
                Information2
                More
            }
            .toolbar{
                Button { } label: { Image(systemName: "plus.circle.fill") }
                Button { } label: { Image(systemName: "ellipsis.circle.fill") }
            }
        }
    }
    
    var Cover: some View {
        Image(i.image)
            .resizable()
            .frame(maxWidth: 250, maxHeight: 250)
            .scaledToFill()
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(radius: 3)
            .padding(.bottom)
    }
    
    var Information: some View {
        VStack {
            Text(i.title)
                .font(.title3)
                .bold()
            Text(i.artist)
                .font(.title3)
                .foregroundColor(.red)
            Text("\(i.genre) · \(i.year) · Lossless")
                .font(.caption)
                .foregroundColor(.secondary)
                .bold()
            HStack {
                Button() { } label: {
                    Label("Play", systemImage: "play.fill")
                        .bold()
                        .frame(width: 140, height: 35)
                }
                .padding(.trailing, 5)
                Button() { } label: {
                    Label("Shuffle", systemImage: "shuffle")
                        .bold()
                        .frame(width: 140, height: 35)
                }
                .padding(.leading, 5)
            }
            .buttonStyle(.bordered)
            .foregroundColor(.red)
            .padding(.vertical, 10)
        }
    }
    
    var Songs: some View {
        VStack {
            Divider()
                .offset(y: 5)
                .padding(.leading)
            List {
                ForEach(0..<i.song.count, id: \.self) { j in
                    HStack {
                        Text("\(j+1)")
                            .foregroundColor(.secondary)
                            .font(.title3)
                        Text((i.song[j]))
                            .padding(.leading, 5)
                            .font(.title3)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .padding(.horizontal, 7)
                    }
                    .padding(.vertical, 6)
                }
            }
            .listStyle(.plain)
            .frame(minHeight: minRowHeight * CGFloat(i.song.count))
        }
    }
    
    var Information2: some View {
        VStack {
            Section {
                Text(i.date)
                Text("\(i.song.count) songs, \(i.duration) minutes")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundColor(.secondary)
            .font(.subheadline)
            .padding(.leading)
        }
        .padding(.vertical)
    }
    
    var More: some View {
        Section {
            Text("More By \(i.artist)")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading, .top])
            ScrollView(.horizontal) {
                HStack {
                    ForEach(albums, id: \.self) { j in
                        VStack(alignment: .leading) {
                            Image(j.image)
                                .resizable()
                                .frame(maxWidth: 175, maxHeight: 175)
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text(j.title)
                                .lineLimit(1)
                            Text(i.artist)
                                .lineLimit(1)
                                .foregroundColor(.secondary)
                        }
                        .frame(width: 180)
                    }
                }
            }
            .padding(.leading)
            .padding(.bottom, 80)
        }
        .background(.bar)
    }
}

struct Album_Previews: PreviewProvider {
    static var previews: some View {
        Album(i: AlbumDetail.mandapop[0])
    }
}
