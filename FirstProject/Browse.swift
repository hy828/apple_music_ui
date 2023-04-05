//
//  Browse.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Browse: View {
    
    private var data = AlbumDetail.data
    let moreToExplore = ["Browse by Category", "Top Charts", "Chill", "Essentials", "Kids", "Music Videos"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(1...5, id: \.self) { i in
                            Type1
                        }
                    }
                }
                .padding([.top, .leading])
                Type2
                    .padding([.top, .leading])
                Type3
                    .padding([.top, .leading])
                MoreToExplore(list: moreToExplore)
                
            }
            .navigationTitle("Browse")
            Spacer(minLength: 50)
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
                Image("Image")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                HStack(alignment: .bottom) {
                    Text("Pre-add Ed's soul-baring sixth LP and hear the raw \"Eyes Closed\"")
                        .foregroundColor(.white)
                        .font(.caption)
                        
                    Spacer(minLength: 30)
                    Image("Image")
                        .resizable()
                        .frame(width: 55, height: 55)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .border(.white)
                }
                .frame(maxHeight: .infinity, alignment: .bottomLeading)
                .padding(10)
            }
            .frame(maxWidth: 360, maxHeight: 200, alignment: .bottomLeading)
        }
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
                    ForEach(1...5, id: \.self) { i in
                        Type2Item
                    }
                }
            }
        }
    }
    
    var Type2Item: some View {
        NavigationLink {
            Album(i: data[0])
        } label: {
            VStack(alignment: .leading) {
                Image("Image")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(height: 200)
                Text("Floral Sense - The 1st Album")
                    .lineLimit(1)
                    .foregroundColor(.black)
                Text("YESUNG")
                    .foregroundColor(.secondary)
            }
            .frame(width: 200)
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
                    ForEach(1...5, id: \.self) { i in
                        Type3Item
                    }
                }
            }
        }
    }
    
    var Type3Item: some View {
        VStack(alignment: .leading) {
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .frame(height: 100)
            Text("Focus")
                .offset(y: -5)
        }
        .frame(width: 200)
    }
}

struct Browse_Previews: PreviewProvider {
    static var previews: some View {
        Browse()
    }
}
