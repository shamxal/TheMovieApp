//
//  CoreModel.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 11.02.26.
//

import Foundation

struct CoreModel<T: Codable>: Codable {
    let page: Int?
    let results: T?
    let totalPages, totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
