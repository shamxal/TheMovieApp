//
//  HomeViewModel.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 30.01.26.
//

import Foundation

struct HomeModel {
    let title: String
    let items: [MovieResult]
}

enum HomeCategory: String, CaseIterable {
    case nowPlaying = "Now Playing"
    case popular = "Popular"
    case upcoming = "Upcoming"
    case topRated = "Top Rated"
}

final class HomeViewModel {
    var items = [HomeModel]()
    private let manager = MovieManager()
    
    var success: (() -> Void)?
    var error: ((String) -> Void)?
    
    func getMovies() {
//        getMovieItems(category: .nowPlaying, endpoint: .nowPlaying)
//        getMovieItems(category: .popular, endpoint: .popular)
//        getMovieItems(category: .topRated, endpoint: .topRated)
//        getMovieItems(category: .upcoming, endpoint: .upcoming)
        
        for category in HomeCategory.allCases {
            getMovieItems(category: category)
        }
    }
    
//    private func getMovieItems(category: HomeCategory, endpoint: MovieEndpoint) {
//        manager.getMovies(endpoint: endpoint) { data, errorMessage in
//            if let errorMessage {
//                self.error?(errorMessage)
//            } else if let data {
//                self.items.append(.init(title: category.rawValue,
//                                        items: data.results ?? []))
//                self.success?()
//            }
//        }
//    }
    
    private func getMovieItems(category: HomeCategory) {
        manager.getMovieData(category: category) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: category.rawValue,
                                        items: data))
                self.success?()
            }
        }
    }
    
    
}
