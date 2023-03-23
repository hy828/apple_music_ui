//
//  Category.swift
//  FirstProject
//
//  Created by lhy on 2023/3/23.
//

import SwiftUI

struct Category: View {
    
    let value: Int
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(Category.genre[value])
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .foregroundColor(.white)
                .font(.footnote)
                .bold()
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 10))
        }
        .frame(height: 125)
    }
    
    static var genre: [String] = [
        "Spatial Audio",
        "K-Pop",
        "International",
        "Sing",
        "C-Pop",
        "Cantopop",
        "Mandapop",
        "Apple Music Live",
        "Hip-Hop/Rap",
        "R&B/Soul",
        "J-Pop",
        "Fitness",
        "Alternative/Indie",
        "DJ Mixes",
        "Classical",
        "Hits",
        "Rock",
        "Jazz",
        "Essentials",
        "Soul/Funk",
        "Dance",
        "'90s",
        "Electronic",
        "Anime",
        "Chill",
        "2000s",
        "Classical Rock",
        "Gaming",
        "Acoustic",
        "Behind the Songs",
        "Blues",
        "Film, TV & Stage",
        "Alone Time",
        "Latin",
        "Music Videos",
        "Party",
        "Sleep",
        "Work",
        "2010s",
        "'80s",
        "'70s",
        "Up Next",
        "Romance",
        "Weekend",
        "New Music",
        "Morning",
        "Kids",
        "Motivation",
        "Samba"
    ]
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(value: 0)
    }
}
