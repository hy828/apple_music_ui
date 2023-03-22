//
//  ListenNow.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct ListenNow: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("Top Picks")
                    .font(.title2)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity,
                           maxHeight: 30,
                           alignment: .topLeading)
                    .border(.red)
                TopPicks
                RecentlyPlayed
                RecentlyPlayed
                RecentlyPlayed
            }
            .navigationTitle("Listen Now")
        }
    }
    
    var TopPicks: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 220, height: 270, alignment: .topLeading)
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 220, height: 270, alignment: .topLeading)
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 220, height: 270, alignment: .topLeading)
            }
        }
        .padding()
    }
    
    var RecentlyPlayed: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 180, height: 180, alignment: .topLeading)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 180, height: 180, alignment: .topLeading)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 180, height: 180, alignment: .topLeading)
            }
        }
        .padding()
    }
}

struct ListenNow_Previews: PreviewProvider {
    static var previews: some View {
        ListenNow()
    }
}
