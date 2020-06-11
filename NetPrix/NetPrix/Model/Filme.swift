//
//  Filme.swift
//  NetPrix
//
//  Created by Usuario Local on 07/06/20.
//  Copyright © 2020 Everis. All rights reserved.
//

import Foundation




class Filme: NSObject, Decodable {
  
    //MARK: - Atributos
    var originalName: String?
    
    var id: Int
    
    var name: String?
    
    let voteCount: Int
    
    let voteAverage: Double
    
    let firstAirDate: String?
    
    let posterPath: String
    
    let genreIDS: [Int]
    
    let originalLanguage: String
    
    let backdropPath: String
    
    let overview: String
    
    let originCountry: [String]?
    
    let popularity: Double?
    
    let mediaType: String
    
    let adult: Bool?
    
    let originalTitle: String?
    
    let releaseDate: String?
    
    let title: String?
    
    let video: Bool?
    
    
    
    enum CodingKeys: String, CodingKey {
        
        case originalName = "original_name"
        
        case id = "id"
        
        case name = "name"
        
        case voteCount = "vote_count"
        
        case voteAverage = "vote_average"
        
        case firstAirDate = "first_air_date"
        
        case posterPath = "poster_path"
        
        case genreIDS = "genre_ids"
        
        case originalLanguage = "original_language"
        
        case backdropPath = "backdrop_path"
        
        case overview = "overview"
        
        case originCountry = "origin_country"
        
        case popularity = "popularity"
        
        case mediaType = "media_type"
        
        case adult = "adult"
        
        case originalTitle = "original_title"
        
        case releaseDate = "release_date"
        
        case title = "title"
        
        case video = "video"
        
    }
    
    //Mark: - init

    init (_ originalName: String, _ id: Int, _ name: String, _ voteCount: Int, _ voteAverage: Double, _ firstAirDate: String, _ posterPath: String, _ genreIDS: [Int], _ originalLanguage: String, _ backdropPath: String, _ overview: String,
          
          _ originCountry: [String], _ popularity: Double, _ mediaType: String, _ adult: Bool, _ originalTitle: String, releaseDate: String, title: String, video: Bool){
        
        self.originalName = originalName
        self.id = id
        self.name = name
        self.voteCount = voteCount
        self.voteAverage = voteAverage
        self.firstAirDate = firstAirDate
        self.posterPath = posterPath
        self.genreIDS = genreIDS
        self.originalLanguage = originalLanguage
        self.backdropPath = backdropPath
        self.overview = overview
        self.originCountry = originCountry
        self.popularity = popularity
        self.mediaType = mediaType
        self.adult = adult
        self.originalTitle = originalTitle
        self.releaseDate = releaseDate
        self.title = title
        self.video = video
    }

    //MARK: - metodos

    class func converteListaParaData(_ json: [[String:Any]] ) -> Data? {
        return try? JSONSerialization.data(withJSONObject: json, options: [])
    }

    class func decodificaFilme(_ jsonData: Data) -> [Filme]? {
        do{
            return try JSONDecoder().decode([Filme].self , from: jsonData)
          }catch{
            
            print (error.localizedDescription)
            
            return nil
        }
    }
}

