//
//  RadioCategory.swift
//  FirstProject
//
//  Created by lhy on 2023/4/4.
//

import Foundation
import SwiftUI

struct RadioCategory: Hashable {
    let id = UUID()
    var title: String
    var genre: String
    var group: String
    var color: [Color]
}

extension RadioCategory {
    static var topStations = [
        RadioCategory(title: "Hip-Hop Station", genre: "Hip-Hop", group: "Apple Music Hip-Hop", color: [.blue, .cyan]),
        RadioCategory(title: "Pop Station", genre: "Pop", group: "Apple Music Pop", color: [.blue, .cyan]),
        RadioCategory(title: "Alternative Station", genre: "Alternative", group: "Apple Music Alternative", color: [.blue, .cyan]),
        RadioCategory(title: "R&B Station", genre: "R&B", group: "Apple Music R&B", color: [.blue, .cyan]),
        RadioCategory(title: "'80s Hits Station", genre: "'80s Hits", group: "Apple Music Hits", color: [.blue, .cyan]),
        RadioCategory(title: "Classic Rock Station", genre: "Classic Rock", group: "Apple Music Classic Rock", color: [.blue, .cyan]),
        RadioCategory(title: "Chill Station", genre: "Chill", group: "Apple Music Chill", color: [.blue, .cyan]),
        RadioCategory(title: "Classical Station", genre: "Classical", group: "Apple Music Classical", color: [.blue, .cyan]),
        RadioCategory(title: "Spa Station", genre: "Spa", group: "Apple Music Chill", color: [.blue, .cyan]),
    ]
    
    static var worldwideStations = [
        RadioCategory(title: "K-Pop Station", genre: "K-Pop", group: "Apple Music K-Pop", color: [.blue, .cyan]),
        RadioCategory(title: "Cantopop Station", genre: "Cantopop", group: "Apple Music Cantopop", color: [.blue, .cyan]),
        RadioCategory(title: "Brazilian Pop Station", genre: "Brazilian Pop", group: "Apple Music Brazilian Pop", color: [.blue, .cyan]),
    ]
    
    static var stationsByGenre = [
        RadioCategory(title: "Acoustic Station", genre: "Acoustic", group: "Apple Music Acoustic", color: [.blue, .cyan]),
        RadioCategory(title: "Jazz Station", genre: "Jazz", group: "Apple Music Jazz", color: [.blue, .cyan]),
        RadioCategory(title: "Adult Rock Station", genre: "Adult Rock", group: "Apple Music Rock", color: [.blue, .cyan]),
        RadioCategory(title: "Electronic Station", genre: "Electronic", group: "Apple Music Electronic", color: [.blue, .cyan]),
        RadioCategory(title: "Hits Station", genre: "Hits", group: "Apple Music Hits", color: [.blue, .cyan]),
        RadioCategory(title: "Indie Station", genre: "Indie", group: "Apple Music Indie", color: [.blue, .cyan]),
        RadioCategory(title: "Hard Rock Station", genre: "Hard Rock", group: "Apple Music Hard Rock", color: [.blue, .cyan]),
        RadioCategory(title: "Rock Station", genre: "Rock", group: "Apple Music Rock", color: [.blue, .cyan]),
    ]
}
