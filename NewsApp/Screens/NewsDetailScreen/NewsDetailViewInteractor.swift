//
//  NewsDetailViewInteractor.swift
//  NewsApp
//
//  Created by Alexander on 26.01.2022.
//

import Foundation
import WebKit

protocol NewsDetailBusinessLogic {
    
    func makeRequest()
}

protocol NewsDetailViewDataStore: AnyObject {
    
    var newsDetailUrl: String { get set }
}

class NewsDetailViewInteractor: NewsDetailViewDataStore {
    
    // MARK: - External variables
    var newsDetailUrl: String = ""
    
    // MARK: - Internal variables
    var presenter: NewsDetailPresentationLogic?
}

// MARK: - News detail business logic
extension NewsDetailViewInteractor: NewsDetailBusinessLogic {
    
    func makeRequest() {
        
        guard let url = URL(string: newsDetailUrl) else { return }
        
        let request = URLRequest(url: url)
       
        presenter?.presentRequest(request: request)
    }
}
