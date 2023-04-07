//
//  MiniMusicPlayer.swift
//  FirstProject
//
//  Created by lhy on 2023/3/26.
//

import SwiftUI

// 音乐播放器缩小版
struct MiniMusicPlayer: View {
    
    @State private var isPresented = false
    private var album = AlbumDetail.recentlyPlayed[0]
    
    var body: some View {
        HStack {
            Image(album.image)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            Text(album.song[2])
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
        .onTapGesture { // 点击后显示全屏
            withAnimation {
                isPresented.toggle()
            }
        }
        
        MusicPlayer(isPresented: $isPresented, album: album)
            .animation(.default, value: isPresented)
    }
}

struct MiniMusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniMusicPlayer()
    }
}
