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
        ),
        AlbumDetail(
            title: "Drunk on love - The 2nd Mini Album",
            image: "Drunk on Love",
            artist: "RYEOWOOK",
            date: "2 January 2019",
            song: ["I'm not over you", "One and Only", "Drunk in the morning", "Without you", "Something Good", "Sugar", "The 2nd Story (Special Track)"],
            genre: "K-Pop",
            year: "2019",
            duration: 27
        ),
        AlbumDetail(
            title: "Ideal Life",
            image: "Ideal Life",
            artist: "Lala Hsu",
            date: "6 June 2012",
            song: ["Cuckoo", "Rolling! My Baby", "I Dare You", "Dare to Celebrate", "Chili Pepper", "Not That Hard", "Bottleneck", "Palette", "Ideal Life", "Lala's Squad"],
            genre: "Mandapop",
            year: "2012",
            duration: 41
        ),
        AlbumDetail(
            title: "The Road : Keep on Going - The 11th Album Vol.1 - EP",
            image: "Keep on Going",
            artist: "SUPER JUNIOR",
            date: "12 July 2022",
            song: ["Mango", "Don't Wait", "My Wish", "Everyday", "Always"],
            genre: "K-Pop",
            year: "2022",
            duration: 17
        ),
        AlbumDetail(
            title: "Lala Hsu",
            image: "Lala Hsu",
            artist: "Lala Hsu",
            date: "29 May 2009",
            song: ["Delicious", "Waltz", "VIP", "Down in Sandbar", "White Flag", "Riding a White Horse", "The Same Moonlight", "Knowingly and Willfully", "Exit", "Sing a Love Song", "Unlocked Door"],
            genre: "Mandapop",
            year: "2009",
            duration: 44
        ),
        AlbumDetail(
            title: "MAGIC - SUPER JUNIOR SPECIAL ALBUM, Pt. 2",
            image: "Magic",
            artist: "SUPER JUNIOR",
            date: "16 September 2015",
            song: ["Magic", "Devil", "Simply Beautiful", "You Got It", "Dorothy", "Sarang", "Stars Appear...", "Good Love", "We Can", "Don't Wake Me Up", "Love at First Sight", "Forever With You", "Rock'n Shine!", "Alright"],
            genre: "K-Pop",
            year: "2015",
            duration: 52
        ),
        AlbumDetail(
            title: "Missing",
            image: "Missing",
            artist: "Lala Hsu",
            date: "13 June 2014",
            song: ["Mssing", "Steady", "The Secrets", "Miss Worry", "Unwritten Rules", "Confession", "Extreme", "Candy Crusher", "Gone with the Wind", "Be Strong", "One Minute More"],
            genre: "Mandapop",
            year: "2014",
            duration: 47
        ),
        AlbumDetail(
            title: "PLAY - The 8th Album",
            image: "Play",
            artist: "SUPER JUNIOR",
            date: "6 November 2017",
            song: ["Black Suit", "Scene Stealer", "One More Chance", "Good Day for a Good Day", "Runaway", "The Lucky Ones", "Girlfriend", "Spin Up!", "Too late", "I Do"],
            genre: "K-Pop",
            year: "2017",
            duration: 35
        ),
        AlbumDetail(
            title: "Sexy, Free & Single",
            image: "Sexy, Free & Single",
            artist: "SUPER JUNIOR",
            date: "1 July 2012",
            song: ["Sexy, Free & Single", "From U", "Now", "Rockstar", "Gulliver", "Someday", "Bittersweet", "Butterfly", "Daydream", "A 'Good'bye"],
            genre: "K-Pop",
            year: "2012",
            duration: 36
        ),
        AlbumDetail(
            title: "Sorry, Sorry",
            image: "Sorry Sorry",
            artist: "SUPER JUNIOR",
            date: "11 March 2009",
            song: ["Sorry, Sorry", "Why I Like You", "Let's Not...", "Angela", "Reset", "Monster", "What If", "Heartquake", "Club No.1", "Happy Together", "Dead At Heart", "Shining Star"],
            genre: "K-Pop",
            year: "2009",
            duration: 44
        ),
        AlbumDetail(
            title: "The Renaissance - The 10th Album",
            image: "The Renaissance",
            artist: "SUPER JUNIOR",
            date: "16 March 2021",
            song: ["SUPER", "House Party", "Burn the Floor", "Paradox", "Closer", "The Melody", "Raining Spell for Love (Remake Version)", "Mystery", "More Days with You", "Tell Me Baby"],
            genre: "K-Pop",
            year: "2021",
            duration: 33
        ),
    ]
}
