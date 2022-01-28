//
//  NewsViewRouter.swift
//  NewsApp
//
//  Created by Alexander on 27.01.2022.
//

import UIKit

protocol NewsViewRoutingLogic {

    func navigateToNewsDetail()
}

class NewsViewRouter {
    
    weak var viewController: UIViewController?
    var newsDetailBuilder: NewsDetailViewBuildingLogic!
}

extension NewsViewRouter: NewsViewRoutingLogic {
  
    func navigateToNewsDetail() {
        
        guard let newsDetailViewController = newsDetailBuilder?.buildNewsDetailScreen() else { return }
        
        viewController?.navigationController?.show(newsDetailViewController, sender: self)
    }
}
