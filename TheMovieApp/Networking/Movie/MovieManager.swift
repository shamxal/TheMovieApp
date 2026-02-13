//
//  MovieManager.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 04.02.26.
//

import Foundation

//Movie Use Case elave edeceksiz

class MovieManager {
    private let manager = CoreManager()
    
    func getMovies(endpoint: MovieEndpoint, completion: @escaping ((Movie?, String?) -> Void)) {
        manager.request(model: Movie.self,
                        endpoint: endpoint.rawValue,
                        completion: completion)
    }
    
    func getMovieData(category: HomeCategory, completion: @escaping (([MovieResult]?, String?) -> Void)) {
        var endpoint = ""
        switch category {
        case .upcoming:
            endpoint = MovieEndpoint.upcoming.rawValue
        case .popular:
            endpoint = MovieEndpoint.popular.rawValue
        case .topRated:
            endpoint = MovieEndpoint.topRated.rawValue
        case .nowPlaying:
            endpoint = MovieEndpoint.nowPlaying.rawValue
        }
        manager.request(model: [MovieResult].self,
                        endpoint: endpoint,
                        completion: completion)
    }
}
