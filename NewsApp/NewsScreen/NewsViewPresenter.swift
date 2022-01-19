//
//  NewsViewPresenter.swift
//  NewsApp
//
//  Created by Alexander on 19.01.2022.
//

import Foundation

import Foundation

protocol NewsPresentationLogic {
    
    func presentData()
}

class NewsViewPresenter {
    
    weak var viewController: NewsDisplayLogic?
}

// MARK: - News presentation logic
extension NewsViewPresenter: NewsPresentationLogic {
  
    func presentData() {
        
    }
}
