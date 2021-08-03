//
//  Movie.swift
//  TableList
//
//  Created by kristine.lazdovska on 03/08/2021.
//

import Foundation

struct Movie {
    
    let poster: String
    let movieTitle: String
    let year: String
    
    static func createMovie () -> [Movie]{
        var movies: [Movie] = []
        
        let posters = DataManager.shared.poster
        let moviesTitle = DataManager.shared.movieTitle
        let years = DataManager.shared.year
        
        for index in 0..<movies.count {
            let movie = Movie (poster: posters[index], movieTitle: moviesTitle[index], year: years[index])
            movies.append(movie)
        }
        
        return movies
    }
}
