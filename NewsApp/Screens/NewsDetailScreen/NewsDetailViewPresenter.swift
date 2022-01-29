//
//  NewsDetailViewPresenter.swift
//  NewsApp
//
//  Created by Alexander on 26.01.2022.
//

import Foundation

protocol NewsDetailPresentationLogic {
    
   func presentRequest(request: URLRequest)
}

class NewsDetailViewPresenter {
    
    // MARK: - Internal variables
    weak var viewController: NewsDetailDisplayLogic?
}

// MARK: - News detail presentation logic
extension NewsDetailViewPresenter: NewsDetailPresentationLogic {
    
    func presentRequest(request: URLRequest) {
        
        viewController?.displayPage(request: request)
    }
}
