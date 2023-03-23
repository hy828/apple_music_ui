//
//  ListenNow.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct ListenNow: View {
    
    @State private var showingAccount = false
    
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
                }
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
                    ForEach(1...5, id: \.self) { i in
                        Album()
                    }
                }
            }
            .padding()
        }
    }
}

struct ListenNow_Previews: PreviewProvider {
    static var previews: some View {
        ListenNow()
    }
}
