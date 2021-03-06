//
//  NewsViewPresenter.swift
//  NewsApp
//
//  Created by Alexander on 19.01.2022.
//

import Foundation
import UIKit

protocol NewsPresentationLogic {
    
    func present(data: [Article])
}

class NewsViewPresenter {
    
    weak var viewController: NewsDisplayLogic?
}

// MARK: - News presentation logic implementation
extension NewsViewPresenter: NewsPresentationLogic {
    
    func present(data: [Article]) {
        
        let viewModel = data.map { model -> NewsCellModel in
            let cellModel = NewsCellModel(title: model.title,
                                          author: model.author,
                                          url: model.url ?? "https://news.ycombinator.com/item?id=\(model.objectID)")
            return cellModel
        }
        
        self.viewController?.display(data: viewModel)
    }
}
