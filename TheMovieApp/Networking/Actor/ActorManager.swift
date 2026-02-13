//
//  ActorManager.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 04.02.26.
//

import Foundation

class ActorManager: ActorUseCase {
    private let manager = CoreManager()
    
    func getPopularActorList(page: String, completion: @escaping (Actor?, String?) -> Void) {
        manager.request(model: Actor.self,
//                        endpoint: ActorEndpoint.popularActor.rawValue + "?page=\(page)",
                        endpoint: ActorEndpoint2.popularActor(page: page).path,
                        completion: completion)
    }
}
