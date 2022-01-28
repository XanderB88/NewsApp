//
//  NewsViewBuilder.swift
//  NewsApp
//
//  Created by Alexander on 28.01.2022.
//

import UIKit

protocol NewsViewBuildingLogic {
    
    func buildNewsScreen() -> UIViewController
}

class NewsBuilder: NewsViewBuildingLogic {
  
    func buildNewsScreen() -> UIViewController {
        
        let viewController = NewsViewController()
        let presenter = NewsViewPresenter()
        let interactor = NewsViewInteractor()
        let router = NewsViewRouter()
        let builder = NewsDetailBuilder()
        
        interactor.presenter = presenter
        presenter.viewController = viewController
        viewController.interactor = interactor
        router.viewController = viewController
        router.newsDetailBuilder = builder
        viewController.router = router
        
        viewController.title = "News"
        
        return viewController
    }
}

