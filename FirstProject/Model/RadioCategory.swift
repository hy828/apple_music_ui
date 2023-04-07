//
//  RadioCategory.swift
//  FirstProject
//
//  Created by lhy on 2023/4/4.
//

import Foundation
import SwiftUI

// Radio电台信息
struct RadioCategory: Hashable {
    let id = UUID()
    var title: String
    var group: String
    var image: String
}

extension RadioCategory {
    static var topStations = [
        RadioCategory(title: "Hip-Hop Station", group: "Apple Music Hip-Hop", image: "Hip-Hop"),
        RadioCategory(title: "Pop Station", group: "Apple Music Pop", image: "Pop"),
        RadioCategory(title: "Alternative Station", group: "Apple Music Alternative", image: "Alternative2"),
        RadioCategory(title: "R&B Station", group: "Apple Music R&B", image: "R&B"),
        RadioCategory(title: "'80s Hits Station", group: "Apple Music Hits", image: "'80s Hits"),
        RadioCategory(title: "Piano Station", group: "Apple Music Piano", image: "Piano"),
        RadioCategory(title: "Choral Station", group: "Apple Music Choral", image: "Choral"),
        RadioCategory(title: "Classical Station", group: "Apple Music Classical", image: "Classical2"),
        RadioCategory(title: "Spa Station", group: "Apple Music Chill", image: "Spa"),
    ]
    
    static var worldwideStations = [
        RadioCategory(title: "J-Pop Station", group: "Apple Music J-Pop", image: "J-Pop"),
        RadioCategory(title: "Cantopop Station", group: "Apple Music Cantopop", image: "Cantopop"),
        RadioCategory(title: "Mandapop Station", group: "Apple Music Mandapop", image: "Mandapop"),
        RadioCategory(title: "Korean TV Drama Hits Station", group: "Apple Music Film & TV", image: "Korean TV Drama Hits"),
    ]
    
    static var stationsByGenre = [
        RadioCategory(title: "'70s Hits Station", group: "Apple Music Hits", image: "'70s Hits"),
        RadioCategory(title: "'90s Hits Station", group: "Apple Music Hits", image: "'90s Hits"),
        RadioCategory(title: "2010s Hits Station", group: "Apple Music Hits", image: "2010s Hits"),
        RadioCategory(title: "Anime Station", group: "Apple Music Anime", image: "Anime"),
        RadioCategory(title: "Bach Station", group: "Apple Music Bach", image: "Bach"),
        RadioCategory(title: "Cool Family Station", group: "Apple Music Cool Family", image: "Cool Family"),
        RadioCategory(title: "Dance Pop Station", group: "Apple Music Dance Pop", image: "Dance Pop"),
        RadioCategory(title: "Electronic Station", group: "Apple Music Electronic", image: "Electronic"),
    ]
}
