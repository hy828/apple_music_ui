//
//  ContentView.swift
//  FirstProject
//
//  Created by lhy on 2023/3/9.
//

import SwiftUI

struct ContentView: View {
    @State var selectedButton: NavigationBar = .library
    
    enum NavigationBar {
        case listenNow
        case browse
        case radio
        case library
        case search
    }
    
    var body: some View {
        TabView(selection: $selectedButton) {
            ListenNow
                .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("Listen Now")
                }
            Text("Browse")
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Browse")
                }
            Text("Radio")
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Radio")
                }
            Library
                .tabItem {
                    Image(systemName: "square.stack.fill")
                    Text("Library")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
    
    var ListenNow: some View {
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
    
    var Library: some View {
        NavigationStack {
            VStack {
                List {
                    Text("Playlists")
                    Text("Artists")
                    Text("Albums")
                    Text("Songs")
                    Text("Genres")
                    Text("Compilations")
                    Text("Composers")
                    Text("Downloaded")
                }
                .listStyle(.plain)
                Text("Recently Added")
                    .font(.title2.bold())
            }
            .navigationTitle("Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
