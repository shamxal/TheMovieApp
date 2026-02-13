//
//  ActorViewModel.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 04.02.26.
//

import Foundation

final class ActorViewModel {
    var actorData: Actor?
    var items = [ActorResult]()
    private var useCase: ActorUseCase
    
    var success: (() -> Void)?
    var error: ((String) -> Void)?
    
    init(useCase: ActorUseCase) {
        self.useCase = useCase
    }
    
    func getActorList() {
        let page = (actorData?.page ?? 0) + 1
        print(page)
        useCase.getPopularActorList(page: "\(page)") { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.actorData = data
                self.items.append(contentsOf: data.results ?? [])
                self.success?()
            }
        }
    }
    
    func startPagination(index: Int) {
        if index > items.count - 2 &&
           (actorData?.page ?? 0 <= actorData?.totalPages ?? 0) {
            getActorList()
        }
    }
}
