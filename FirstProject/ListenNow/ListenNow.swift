//
//  ListenNow.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct ListenNow: View {
    
    @State private var showingAccount = false
    private var data = AlbumDetail.data
    
    var body: some View {
        NavigationStack {
            ScrollView {
                TopPicks
                TopPicks
                TopPicks
                TopPicks
            }
            .navigationTitle("Listen Now")
            .toolbar {
                Button {
                    showingAccount.toggle()
                } label: {
                    Label("Account", systemImage: "person.crop.circle")
                        .font(.system(size: 25))
                        .bold()
                }
                .offset(y: 45)
                .foregroundColor(.red)
            }
            .sheet(isPresented: $showingAccount) {
                Account()
            }
        }
    }
    
    var TopPicks: some View {
        VStack {
            Text("Top Picks")
                .font(.title2)
                .bold()
                .padding()
                .frame(maxWidth: .infinity,
                       maxHeight: 30,
                       alignment: .topLeading)
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(data, id: \.id) { i in
                        NavigationLink {
                            Album(i: i)
                        } label: {
                            VStack(alignment: .leading) {
                                Image(i.image)
                                    .resizable()
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                    .aspectRatio(1, contentMode: .fill)
                                    .frame(height: 200)
                                Text(i.title)
                                    .lineLimit(1)
                                    .foregroundColor(.black)
                                Text(i.artist)
                                    .foregroundColor(.secondary)
                            }
                            .frame(width: 200)
                        }
                    }
                }
            }
            .padding([.top, .leading, .bottom])
        }
    }
    
}

struct ListenNow_Previews: PreviewProvider {
    static var previews: some View {
        ListenNow()
    }
}
