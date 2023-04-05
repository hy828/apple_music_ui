//
//  File.swift
//  FirstProject
//
//  Created by lhy on 2023/3/31.
//

import Foundation

struct AlbumDetail{
    let id = UUID()
    var title: String
    var image: String
    var artist: String
    var date: String
    var song: [String]
    var genre: String
    var year: String
    var duration: Int
}

extension AlbumDetail {
    static var data = [
        AlbumDetail(
            title: "'Bout you - The 2nd Mini Album",
            image: "'Bout you",
            artist: "SUPER JUNIOR-D&E",
            date: "16 August 2018",
            song: ["'Bout you", "RUM DEE DEE", "I love it", "Livin' In", "Evanesce II", "Lost", "Illusion (Obsessed)", "Victory (Special Track)"],
            genre: "International Pop",
            year: "2014",
            duration: 29
        ),
        AlbumDetail(
            title: "The 1st Mini Album 'At Gwanghwamun'",
            image: "At Gwanghwamun",
            artist: "KYUHYUN",
            date: "13 November 2014",
            song: ["At Gwanghwamun", "Eternal Sunshine", "At Close", "Moment of Farewell", "One Confession", "Flying, Deep in the Night", "My Thoughts, Your Memories"],
            genre: "International Pop",
            year: "2014",
            duration: 29
        ),
        AlbumDetail(
            title: "'Bout you - The 2nd Mini Album",
            image: "Celebration",
            artist: "SUPER JUNIOR-D&E",
            date: "16 August 2018",
            song: ["'Bout you", "RUM DEE DEE", "I love it", "Livin' In", "Evanesce II", "Lost", "Illusion (Obsessed)", "Victory (Special Track)"],
            genre: "International Pop",
            year: "2014",
            duration: 29
        ),
        AlbumDetail(
            title: "COUNTDOWN - The 1st Album",
            image: "Countdown",
            artist: "SUPER JUNIOR-D&E",
            date: "2 November 2021",
            song: ["ZERO", "Beautiful Liar", "Far away", "Feel That Feelin'", "La La La", "Have a Nice Day", "Muse", "Share My Love", "Home", "ZERO (English Version)"],
            genre: "International Pop",
            year: "2014",
            duration: 29
        )
    ]
}
