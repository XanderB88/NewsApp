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
}

// MARK: - News business logic
extension NewsViewInteractor: NewsBusinessLogic {
   
    func fetchNews() {
        
        presenter?.presentData()
    }
}
