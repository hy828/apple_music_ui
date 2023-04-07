//
//  ListenNow.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct ListenNow: View {
    
    @State private var showingAccount = false
    private var data = [AlbumDetail.recentlyPlayed, AlbumDetail.kpop, AlbumDetail.newReleases, AlbumDetail.mandapop]
    let category = ["Recently Played", "K-Pop", "New Releases", "Mandapop"]
    
    var body: some View {
        ZStack {
            NavigationStack {
                ScrollView {
                    Type1
                }
                .navigationTitle("Listen Now")
                .sheet(isPresented: $showingAccount) {
                    Account(showingAccount: $showingAccount)
                }
                Spacer(minLength: 50)
            }
            Button {
                showingAccount.toggle()
            } label: {
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 35))
                    .bold()
            }
            .position(x: 350, y: 60)
            .foregroundColor(.red)
        }
    }
    
    var Type1: some View {
        VStack {
            ForEach(0..<category.count, id: \.self) { i in
                Text(category[i])
                    .font(.title2)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity,
                           maxHeight: 30,
                           alignment: .topLeading)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(data[i], id: \.id) { j in
                            NavigationLink {
                                Album(i: j)
                            } label: {
                                VStack(alignment: .leading) {
                                    Image(j.image)
                                        .resizable()
                                        .frame(maxWidth: 175, maxHeight: 175)
                                        .scaledToFill()
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .aspectRatio(1, contentMode: .fill)
                                    Text(j.title)
                                        .lineLimit(1)
                                        .foregroundColor(.black)
                                    Text(j.artist)
                                        .lineLimit(1)
                                        .foregroundColor(.secondary)
                                }
                                .frame(maxWidth: 175)
                            }
                        }
                    }
                }
                .padding([.top, .leading, .bottom])
            }
        }
    }
    
}

struct ListenNow_Previews: PreviewProvider {
    static var previews: some View {
        ListenNow()
    }
}
