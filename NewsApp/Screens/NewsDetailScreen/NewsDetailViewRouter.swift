//
//  NewsDetailViewRouter.swift
//  NewsApp
//
//  Created by Alexander on 28.01.2022.
//

import Foundation

protocol NewsDetailViewDataPassing {
    
    var dataStore: NewsDetailViewDataStore? { get }
}

class NewsDetailViewRouter: NewsDetailViewDataPassing {
    
    // MARK: - External variables
    weak var dataStore: NewsDetailViewDataStore?
}

