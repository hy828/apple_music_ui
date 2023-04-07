//
//  Browse.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

// Browse
struct Browse: View {
    
    private var data = AlbumDetail.nowInSA
    let moreToExplore = ["Browse by Category", "Top Charts", "Chill", "Essentials", "Kids", "Music Videos"]
    let musicByMood = ["Focus", "Feeling Blue", "Chill", "Fitness", "Motivation", "Romance", "Essentials", "Party"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Type1
                    .padding([.top, .leading])
                Type2
                    .padding([.top, .leading])
                Type3
                    .padding([.top, .leading])
                MoreToExplore(list: moreToExplore)
                
            }
            .navigationTitle("Browse")
        }
    }
    
    var Type1: some View {
        VStack(alignment: .leading) {
            Text("NEW SINGLE + PRE-ADD NOW")
                .font(.caption2)
                .bold()
                .foregroundColor(.secondary)
            Text("- (Deluxe)")
                .font(.title3)
            Text("Ed Sheeran")
                .font(.title3)
                .foregroundColor(.secondary)
            ZStack {
                Image("Ed Sheeran")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 360, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                HStack(alignment: .bottom) {
                    Text("Pre-add Ed's soul-baring sixth LP and hear the raw \"Eyes Closed\"")
                        .foregroundColor(.white)
                        .font(.caption)
                    Spacer(minLength: 30)
                    Image("Deluxe")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 55, height: 55)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                .frame(maxHeight: .infinity, alignment: .bottomLeading)
                .padding(10)
            }
            .frame(maxWidth: 360, maxHeight: 200, alignment: .bottomLeading)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var Type2: some View {
        VStack {
            HStack {
                Text("Now in Spatial Audio")
                    .font(.title3)
                    .bold()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    .bold()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(data, id: \.id) { i in
                        VStack(alignment: .leading) {
                            Image(i.image)
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .frame(height: 175)
                            Text(i.title)
                                .lineLimit(1)
                                .foregroundColor(.black)
                            Text(i.artist)
                                .lineLimit(1)
                                .foregroundColor(.secondary)
                        }
                        .frame(width: 175)
                    }
                }
            }
        }
    }
    
    var Type3: some View {
        VStack {
            Text("Music by Mood")
                .font(.title3)
                .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(musicByMood, id: \.self) { i in
                        VStack(alignment: .leading) {
                            Image(i)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 6))
                                .frame(height: 90)
                            Text(i)
                                .offset(y: -5)
                        }
                        .frame(width: 175)
                    }
                }
            }
        }
    }
}

struct Browse_Previews: PreviewProvider {
    static var previews: some View {
        Browse()
    }
}
