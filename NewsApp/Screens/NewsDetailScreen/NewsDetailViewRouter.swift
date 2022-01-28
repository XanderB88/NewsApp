//
//  NewsDetailViewRouter.swift
//  NewsApp
//
//  Created by Alexander on 28.01.2022.
//

import Foundation

protocol NewsDetailRoutingLogic {
    
}

protocol NewsDetailViewDataPassingLogic {
    
    var dataStore: NewsDetailViewDataStoreLogic? { get }
}

class NewsDetailViewRouter: NewsDetailViewDataPassingLogic {
    
    weak var dataStore: NewsDetailViewDataStoreLogic?
}

extension NewsDetailViewRouter: NewsDetailRoutingLogic {
    
}
