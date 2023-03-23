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
    @State private var showView : Views = .lyrics
    @State private var isPlaying : Bool = true
    
    enum Views {
        case cover
        case lyrics
        case nextList
    }
    
    var body: some View {
        ZStack {
            Color.gray
            VStack {
                if showView == Views.nextList {
                    NextList
                } else if showView == Views.lyrics {
                    Lyrics
                } else {
                    Cover
                }
                ControlButton
            }
            .padding()
        }
    }
    
    var Cover: some View {
        VStack {
            Spacer()
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(height: 300)
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
            ProgressBar
        }
        .padding()
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
        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
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
            ProgressBar
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
                Image(systemName: "repeat")
                Image(systemName: "infinity")
            }
            .padding(EdgeInsets(top: 15, leading: 15, bottom: 0, trailing: 15))
            VStack {
                ScrollView{
                    ForEach(1...10, id: \.self) { i in
                        SongRow
                    }
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 15, trailing: 15))
        }
    }
    
    var ControlButton: some View {
        VStack {
            HStack {
                Image(systemName: "backward.fill")
                    .font(.system(size: 30))
                Button() {
                    //待补，变换时有circle渐变，按钮无颜色
                    isPlaying.toggle()
                } label: {
                    if isPlaying {
                        Image(systemName: "play.fill")
                            .font(.system(size: 50))
                            .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                    } else {
                        Image(systemName: "pause.fill")
                            .font(.system(size: 50))
                            .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
                    }
                }
                Image(systemName: "forward.fill")
                    .font(.system(size: 30))
            }
            HStack {
                Image(systemName: "speaker.fill")
                    .padding()
                Slider(value: $volume, in: 0...100, step: 10)
                Image(systemName: "speaker.wave.3.fill")
                    .padding()
            }
            .imageScale(.small)
            .padding(EdgeInsets(top: 30, leading: 0, bottom: 10, trailing: 0))
            HStack {
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
                Image(systemName: "airplayaudio")
                    .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
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
        MusicPlayer()
    }
}
