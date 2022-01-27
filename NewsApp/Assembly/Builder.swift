//
//  Assembly.swift
//  NewsApp
//
//  Created by Alexander on 19.01.2022.
//

import UIKit

protocol BuildingLogic {
    
    func buildNewsScreen() -> UIViewController
    func buildNewsDetailScreen() -> UIViewController
}

class Builder: BuildingLogic {
  
    func buildNewsScreen() -> UIViewController {
        
        let viewController = NewsViewController()
        let presenter = NewsViewPresenter()
        let interactor = NewsViewInteractor()
        let router = NewsViewRouter()
        let builder = Builder()
        
        interactor.presenter = presenter
        presenter.viewController = viewController
        viewController.interactor = interactor
        router.viewController = viewController
        router.newsDetailBuilder = builder
        viewController.router = router
        
        return viewController
    }
    
    func buildNewsDetailScreen() -> UIViewController {
        
        let viewController = NewsDetailViewController()
        let presenter = NewsDetailViewPresenter()
        let interactor = NewsDetailViewInteractor()
        
        interactor.presenter = presenter
        presenter.viewController = viewController
        viewController.interactor = interactor
        
        return viewController
    }
}
