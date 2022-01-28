//
//  NewsDetailViewBuilder.swift
//  NewsApp
//
//  Created by Alexander on 28.01.2022.
//

import UIKit

protocol NewsDetailViewBuildingLogic {
    
    func buildNewsDetailScreen(newsDetailUrl: String) -> UIViewController
}

class NewsDetailBuilder: NewsDetailViewBuildingLogic {
  
    func buildNewsDetailScreen(newsDetailUrl: String) -> UIViewController {
        
        let viewController = NewsDetailViewController()
        let presenter = NewsDetailViewPresenter()
        let interactor = NewsDetailViewInteractor()
        let router = NewsDetailViewRouter()
        
        interactor.presenter = presenter
        presenter.viewController = viewController
        viewController.interactor = interactor
        viewController.router = router
        router.dataStore = interactor
        
        router.dataStore?.newsDetailUrl = newsDetailUrl
     
        return viewController
    }
}
