//
//  Movie.swift
//  Movie-MVVM
//
//  Created by Şükrü Şimşek on 5.11.2023.
//

import Foundation

struct Movie: Decodable {
    let results: [MovieResult]?
}

struct MovieResult: Decodable {
    let id: Int?
    let posterPath: String?
    let overview, releaseDate, title: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case posterPath = "poster_path"
        case overview, title
        case releaseDate = "release_date"
    }
    
    var _id: Int {
        id ?? Int.min
    }
    
    var _posterPath: String {
        posterPath ?? ""
    }
    
    var _title: String {
        title ?? "None"
    }
    
    var _releaseDate: String {
        releaseDate ?? "None"
    }
    
    var _overview: String {
        overview ?? "No Overview 😭"
    }
}
