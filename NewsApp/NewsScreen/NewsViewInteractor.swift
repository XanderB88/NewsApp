//
//  NewsViewInteractor.swift
//  NewsApp
//
//  Created by Alexander on 19.01.2022.
//

import Foundation

protocol NewsBusinessLogic: AnyObject {
    
    func fetchNews()
}

class NewsViewInteractor {
    
    var presenter: NewsPresentationLogic?
    var worker: NetworkServiceLogic!
    
    init(presenter: NewsViewPresenter, worker: NetworkServiceLogic) {
        
        self.presenter = presenter
        self.worker = worker
    }
}

// MARK: - News business logic implementation
extension NewsViewInteractor: NewsBusinessLogic {
   
    func fetchNews() {
        
        worker?.fetchNews(completionHandler: { result in
            
            switch result {
                case .success(let result):
                    
                    DispatchQueue.main.async {
                        
                        self.presenter?.present(data: result)
                    }
                case .failure(let error):
                 
                    print(error.localizedDescription)
            }
        })
    }
}
