//
//  MiniMusicPlayer.swift
//  FirstProject
//
//  Created by lhy on 2023/3/26.
//

import SwiftUI

struct MiniMusicPlayer: View {
    
    @State private var isPresented = false
    
    var body: some View {
        HStack {
            Image("Image")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            Text("Drunk in the morning")
                .padding(.leading, 5)
            Spacer()
            HStack {
                Button() {
                    
                } label: {
                    Image(systemName: "play.fill")
                        .padding(.trailing, 10)
                }
                Button() {
                    
                } label: {
                    Image(systemName: "forward.fill")
                        .padding(.trailing, 5)
                }
            }
            .imageScale(.large)
            .foregroundColor(.black)
        }
        .padding()
        .frame(height: 65)
        .overlay(Divider(), alignment: .bottom)
        .background(.bar)
        .offset(y: -49)
        .onTapGesture {
            withAnimation {
                isPresented.toggle()
            }
        }
        
        MusicPlayer(isPresented: $isPresented)
            .animation(.default, value: isPresented)
    }
}

struct MiniMusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniMusicPlayer()
    }
}
