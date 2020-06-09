//
//  Results.swift
//  NetPrix
//
//  Created by Usuario Local on 05/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation

class Result: NSObject, Codable {
    let originalName: String?
    let id: Int
    let name: String?
    let voteCount: Int
    let voteAverage: Double
    let firstAirDate: String?
    let posterPath: String
    let genreIDS: [Int]
    let originalLanguage: OriginalLanguage
    let backdropPath, overview: String
    let originCountry: [String]?
    let popularity: Double
    let mediaType: MediaType
    let adult: Bool?
    let originalTitle, releaseDate, title: String?
    let video: Bool?
    
    enum CodingKeys: String, CodingKey {
        case originalName = "original_name"
        case id, name
        case voteCount = "vote_count"
        case voteAverage = "vote_average"
        case firstAirDate = "first_air_date"
        case posterPath = "poster_path"
        case genreIDS = "genre_ids"
        case originalLanguage = "original_language"
        case backdropPath = "backdrop_path"
        case overview
        case originCountry = "origin_country"
        case popularity
        case mediaType = "media_type"
        case adult
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case title, video
    }
}

enum MediaType: String, Codable {
    case movie = "movie"
    case tv = "tv"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case es = "es"
}
