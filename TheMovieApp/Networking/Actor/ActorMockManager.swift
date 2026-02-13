//
//  ActorMockManager.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 11.02.26.
//

import Foundation

class ActorMockManager: ActorUseCase {
    func getPopularActorList(page: String, completion: @escaping (Actor?, String?) -> Void) {
        guard let url = Bundle.main.url(forResource: "ActorMockData",
                                        withExtension: "json") else { return }
        do {
            let data = try Data(contentsOf: url)
//            let items = try JSONDecoder().decode([ActorResult].self, from: data)
//            completion(items, nil)
            completion(nil, nil)
        } catch {
            completion(nil, error.localizedDescription)
        }
    }
}
