//
//  MusicPlayer.swift
//  FirstProject
//
//  Created by lhy on 2023/3/24.
//

import SwiftUI

struct MusicPlayer: View {
    
    @State var volume : Double = 0
    @State var progressBar : Double = 0
    @State var showView : Views = .nextList
    @State var isPlaying : Bool = false
    @Binding var isPresented : Bool
    @State var offset : CGSize = .zero
    var album : AlbumDetail
    var albums = [AlbumDetail.recentlyPlayed, AlbumDetail.kpop, AlbumDetail.newReleases, AlbumDetail.mandapop]
    
    enum Views {
        case cover
        case lyrics
        case nextList
    }
    
    var body: some View {
        if isPresented {
            ZStack {
                LinearGradient(colors: [.red, .brown], startPoint: .topTrailing, endPoint: .bottomLeading)
                    .overlay {
                        Rectangle()
                            .opacity(0.65)
                    }
                VStack {
                    Spacer(minLength: 60)
                    Capsule()
                        .frame(width: 40, height: 5)
                        .foregroundColor(.white)
                        .opacity(0.5)
//                        .padding(.bottom, 30)
//                    Spacer()
                    if showView == Views.nextList {
                        NextList
                    } else if showView == Views.lyrics {
                        Lyrics
                    } else {
                        Cover
                    }
//                    Spacer()
                    ControlButton
                    Spacer(minLength: 50)
                }
                .padding(.horizontal)
                .foregroundColor(.white)
                .opacity(0.75)
            }
            .cornerRadius(30)
            .ignoresSafeArea()
            .transition(.move(edge: .bottom))
            .offset(x: 0, y: offset.height)
            .animation(.easeInOut, value: offset)
            .gesture(
                DragGesture(minimumDistance: 10)
                    .onChanged { i in
                        if i.translation.height > 0 {
                            offset.height = i.translation.height
                        }
                    }
                    .onEnded { i in
                        if offset.height > 350 {
                            isPresented.toggle()
                        }
                        offset.height = .zero
                    }
            )
        }
    }
    
    var Cover: some View {
        VStack {
            VStack {
                Image(album.image)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(
                        width: isPlaying ? 250 : 350,
                        height: isPlaying ? 250 : 350
                    )
                    .shadow(radius: 20)
            }
            .frame(width: 350, height: 350)
            .padding(.vertical)
            HStack {
                VStack {
                    Text(album.song[2])
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(album.artist)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .foregroundColor(.white)
                .font(.title2)
//                Spacer()
                Image(systemName: "ellipsis.circle.fill")
                    .imageScale(.large)
            }
            .frame(height: 80, alignment: .bottomLeading)
            .padding(.horizontal, 5)
        }
        .frame(minHeight: 500, maxHeight: 500)
    }
    
    var SongTitle: some View {
        HStack {
            Image(album.image)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text(album.song[2])
                    .bold()
                    .foregroundColor(.white)
                Text(album.artist)
                    .foregroundColor(.white)
            }
            Spacer()
            Image(systemName: "ellipsis.circle.fill")
        }
    }
    
    var ProgressBar: some View {
        VStack {
            Slider(value: $progressBar)
            HStack {
                Text("0:00")
                Spacer()
                Text("-3:12")
            }
            .foregroundColor(.white)
            .font(.caption)
        }
    }
    
    var Lyrics: some View {
        VStack {
            SongTitle
            Rectangle() //Lyrics
                .opacity(0)
                .frame(minHeight: 400, maxHeight: 400)
        }
        .padding(.horizontal, 10)
        .frame(minHeight: 500, maxHeight: 500)
    }
    
    var NextList: some View {
        VStack {
            SongTitle
            HStack {
                Text("Playing Next")
                    .bold().foregroundColor(.white)
                Spacer()
                Image(systemName: "shuffle")
                    .padding(.trailing, 5)
                Image(systemName: "repeat")
                    .padding(.trailing, 5)
                Image(systemName: "infinity")
            }
            .padding(.vertical, 5)
            SongRow
                .frame(maxHeight: 450, alignment: .top)
                .padding(.vertical, 5)
        }
        .padding(.horizontal, 10)
        .frame(minHeight: 572, maxHeight: 572)
    }
    
    var ControlButton: some View {
        VStack {
            if showView == Views.lyrics || showView == Views.cover {
                ProgressBar
                    .padding(5)
            }
            HStack {
                Spacer()
                Image(systemName: "backward.fill")
                    .font(.system(size: 30))
                Spacer()
                Button() {
                    //待补，变换时有circle渐变，按钮无颜色
                    withAnimation(.spring()) {
                        isPlaying.toggle()
                    }
                } label: {
                    Image(systemName: isPlaying ? "play.fill" : "pause.fill")
                        .font(.system(size: 50))
//                        .overlay(
//                            Circle()
//                                .size(width: 100, height: 70)
//                                .offset(x: -29, y: -12)
//                                .onChange(of: isPlaying, perform: animation(.easeInOut, value: 20) as! (Bool) -> Void)
//                                .onTapGesture(perform: animation(.easeInOut, value: 20))
//                        )
                }
                Spacer()
                Image(systemName: "forward.fill")
                    .font(.system(size: 30))
                Spacer()
            }
            .padding(.vertical, 20)
            HStack {
                Image(systemName: "speaker.fill")
                Slider(value: $volume, in: 0...100, step: 10)
                Image(systemName: "speaker.wave.3.fill")
            }
            .imageScale(.small)
            .padding(10)
            HStack {
                Spacer()
                Button() {
                    if showView == Views.lyrics {
                        showView = Views.cover
                    } else {
                        showView = Views.lyrics
                    }
                } label: {
                    if showView == Views.lyrics {
                        //待补，有Rounded Rectangle包围
                        Image(systemName: "quote.bubble")
                    } else {
                        Image(systemName: "quote.bubble")
                    }
                }
                Spacer()
                Image(systemName: "airplayaudio")
                Spacer()
                Button() {
                    if showView == Views.nextList {
                        showView = Views.cover
                    } else {
                        showView = Views.nextList
                    }
                } label: {
                    if showView == Views.nextList {
                        Image(systemName: "list.bullet")
                    } else {
                        Image(systemName: "shuffle.circle.fill")
                    }
                }
                Spacer()
            }
            .imageScale(.large)
        }
    }
    
    var SongRow: some View {
        VStack {
            ScrollView{
                ForEach(albums, id: \.self) { j in
                    ForEach(j, id: \.id) { i in
                        HStack {
                            Image(i.image)
                                .resizable()
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .frame(width: 50, height: 50)
                            VStack(alignment: .leading) {
                                Text(i.song[0])
                                    .bold()
                                    .foregroundColor(.white)
                                Text(i.artist)
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                }
            }
        }
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer(isPresented: .constant(true), album: AlbumDetail.recentlyPlayed[0])
    }
}
