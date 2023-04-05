//
//  ContentView.swift
//  FirstProject
//
//  Created by lhy on 2023/3/9.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection : Tab = .library
    
    enum Tab {
        case listenNow
        case browse
        case radio
        case library
        case search
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selection) {
                ListenNow()
                    .tabItem {
                        Image(systemName: "play.circle.fill")
                        Text("Listen Now")
                    }
                Browse()
                    .tabItem {
                        Image(systemName: "square.grid.2x2.fill")
                        Text("Browse")
                    }
                Radio()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Radio")
                    }
                Library()
                    .tabItem {
                        Image(systemName: "note.square.stack.fill")
                        Text("Library")
                    }
                Search()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
            MiniMusicPlayer()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
