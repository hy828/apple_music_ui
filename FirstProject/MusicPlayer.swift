//
//  MusicPlayer.swift
//  FirstProject
//
//  Created by lhy on 2023/3/24.
//

import SwiftUI

struct MusicPlayer: View {
    
    @State private var volume : Double = 0
    @State private var progressBar : Double = 0
    @State private var showView : Views = .cover
    @State private var isPlaying : Bool = true
    @Binding var isPresented: Bool
    @State private var offset: CGSize = .zero
    
    enum Views {
        case cover
        case lyrics
        case nextList
    }
    
    var body: some View {
        if isPresented {
            ZStack {
                LinearGradient(colors: [.cyan, .gray], startPoint: .topTrailing, endPoint: UnitPoint.bottomLeading)
                    .overlay {
                        Rectangle()
                            .opacity(0.5)
                    }
                VStack {
                    Spacer(minLength: 55)
                    Capsule()
                        .frame(width: 40, height: 5)
                        .foregroundColor(.white)
                        .opacity(0.5)
                    Spacer()
                    if showView == Views.nextList {
                        NextList
                    } else if showView == Views.lyrics {
                        Lyrics
                    } else {
                        Cover
                    }
                    Spacer()
                    ControlButton
                    Spacer()
                }
                .padding()
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
            Spacer()
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(height: 300)
                .shadow(radius: 10)
            Spacer()
            HStack {
                VStack {
                    Text("Without You")
                        .bold()
                    Text("RYEOWOOK")
                }
                .foregroundColor(.white)
                .font(.title2)
                Spacer()
                Image(systemName: "ellipsis.circle.fill")
                    .imageScale(.large)
            }
            Spacer()
        }
    }
    
    var SongTitle: some View {
        HStack {
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("Without You")
                    .bold()
                    .foregroundColor(.white)
                Text("RYEOWOOK")
                    .foregroundColor(.white)
            }
            Spacer()
            Image(systemName: "ellipsis.circle.fill")
        }
        .padding(.top)
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
            Spacer()
        }
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
            VStack {
                ScrollView{
                    ForEach(1...10, id: \.self) { i in
                        SongRow
                    }
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(.vertical, 5)
        }
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
                    isPlaying.toggle()
                } label: {
                    if isPlaying {
                        Image(systemName: "play.fill")
                            .font(.system(size: 50))
                    } else {
                        Image(systemName: "pause.fill")
                            .font(.system(size: 50))
                    }
                }
                Spacer()
                Image(systemName: "forward.fill")
                    .font(.system(size: 30))
                Spacer()
            }
            .padding(.vertical)
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
        HStack {
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("Without You")
                    .bold()
                    .foregroundColor(.white)
                Text("RYEOWOOK")
                    .foregroundColor(.white)
            }
            Spacer()
            Image(systemName: "line.3.horizontal")
        }
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer(isPresented: .constant(true))
    }
}
