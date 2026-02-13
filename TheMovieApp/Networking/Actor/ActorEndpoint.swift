//
//  ActorEndpoint.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 04.02.26.
//

import Foundation

enum ActorEndpoint: String {
    case popularActor = "person/popular"
    case searchActor = "person/search"
}

enum ActorEndpoint2 {
    case popularActor(page: String)
    case searchActor
    
    var path: String {
        switch self {
        case .popularActor(let page):
            return "person/popular?page=\(page)"
        case .searchActor:
            return "person/search"
        }
    }
}
