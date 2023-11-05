//
//  APIURLs.swift
//  Movie-MVVM
//
//  Created by Şükrü Şimşek on 5.11.2023.
//

import Foundation

enum APIURLs {
    static func movies(page: Int) -> String {
        "https://api.themoviedb.org/3/movie/popular?api_key=cae2aed35f06571a06187f21c441a184&language=en-US&page=\(page)"
    }
    
    static func imageURL(posterPath: String) -> String {
        "https://image.tmdb.org/t/p/w500\(posterPath)"
    }
    
    static func detail(id: Int) -> String {
        "https://api.themoviedb.org/3/movie/\(id)?api_key=cae2aed35f06571a06187f21c441a184&language=en-US"
    }
}
