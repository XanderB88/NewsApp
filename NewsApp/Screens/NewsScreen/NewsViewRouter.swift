//
//  NewsViewRouter.swift
//  NewsApp
//
//  Created by Alexander on 27.01.2022.
//

import UIKit

protocol NewsViewRoutingLogic {

    func navigateToNewsDetail(newsDetailUrl: String)
}

class NewsViewRouter {
    
    weak var viewController: UIViewController?
    var newsDetailBuilder: NewsDetailViewBuildingLogic!
}

extension NewsViewRouter: NewsViewRoutingLogic {
  
    func navigateToNewsDetail(newsDetailUrl: String) {
        
        guard let newsDetailViewController = newsDetailBuilder?.buildNewsDetailScreen(newsDetailUrl: newsDetailUrl) else { return }
        
        viewController?.navigationController?.show(newsDetailViewController, sender: self)
    }
}
