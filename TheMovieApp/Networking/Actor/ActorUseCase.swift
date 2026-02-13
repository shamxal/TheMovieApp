//
//  ActorUseCase.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 11.02.26.
//

import Foundation

protocol ActorUseCase {
    func getPopularActorList(page: String, completion: @escaping((Actor?, String?) -> Void))
}
