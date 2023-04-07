//
//  LibraryCategory.swift
//  FirstProject
//
//  Created by lhy on 2023/4/2.
//

import Foundation

// Library列表
struct LibraryCategory {
    let id = UUID()
    var title: String
    var icon: String
}

extension LibraryCategory {
    static var data = [
        LibraryCategory(title: "Playlists", icon: "music.note.list"),
        LibraryCategory(title: "Artists", icon: "music.mic"),
        LibraryCategory(title: "Albums", icon: "square.stack"),
        LibraryCategory(title: "Songs", icon: "music.note"),
        LibraryCategory(title: "Genres", icon: "guitars"),
        LibraryCategory(title: "Compilations", icon: "person.2.crop.square.stack"),
        LibraryCategory(title: "Composers", icon: "music.quarternote.3"),
        LibraryCategory(title: "Downloaded", icon: "arrow.down.circle"),
    ]
}
