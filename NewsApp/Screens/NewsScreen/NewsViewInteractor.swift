//
//  NewsViewInteractor.swift
//  NewsApp
//
//  Created by Alexander on 19.01.2022.
//

import Foundation

protocol NewsBusinessLogic {
    
    func fetchNews()
}

class NewsViewInteractor {
    
    var presenter: NewsPresentationLogic?
    lazy var worker: NetworkServiceWorkingLogic = NetworkService()
}

// MARK: - News business logic implementation
extension NewsViewInteractor: NewsBusinessLogic {
   
    func fetchNews() {
        
        worker.fetchNews(completionHandler: { result in
            
            switch result {
                case .success(let result):
                    
                        self.presenter?.present(data: result)

                case .failure(let error):
                 
                    print(error.localizedDescription)
            }
        })
    }
}
