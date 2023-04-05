//
//  Browse.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Browse: View {
    
    private var data = AlbumDetail.data
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(1...5, id: \.self) { i in
                            type1
                        }
                    }
                }
                .padding([.top, .leading])
                type2
                    .padding([.top, .leading])
                type3
                    .padding([.top, .leading])
            }
            .navigationTitle("Browse")
        }
    }
    
    var type1: some View {
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
    
    var type2: some View {
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
                        type2_element
                    }
                }
            }
        }
    }
    
    var type2_element: some View {
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
    
    var type3: some View {
        VStack {
            Text("Music by Mood")
                .font(.title3)
                .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(1...5, id: \.self) { i in
                        type3_element
                    }
                }
            }
        }
    }
    
    var type3_element: some View {
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
