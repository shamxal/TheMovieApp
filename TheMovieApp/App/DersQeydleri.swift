//
//  DersQeydleri.swift
//  TheMovieApp
//
//  Created by Shamkhal Guliyev on 04.02.26.
//


/*
 POP (Protocol Oriented Programing)
 1. Delegate
 2. Interface (Struct)
 3. UseCase
 */


//UseCase
protocol SearchUseCase {
//    func movieSearch()
    func actorSearch()
}

protocol CardUseCase {
    func getCardList(userId: String)
}

class HomeManager {
    func getCardList(userId: String) {
        //baseurl + cardendpoint
    }
}

class TransferManager {
    func getCardList() {
        
    }
}

class PaymentManager: CardUseCase {
    func getCardList(userId: String) {
        
    }
}


//Dependency Injection (DI)


//Pagination
//limit, ofset
