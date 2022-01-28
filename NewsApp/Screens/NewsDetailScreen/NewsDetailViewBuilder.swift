//
//  NewsDetailViewBuilder.swift
//  NewsApp
//
//  Created by Alexander on 28.01.2022.
//

import UIKit

protocol NewsDetailViewBuildingLogic {
    
    func buildNewsDetailScreen() -> UIViewController
}

class NewsDetailBuilder: NewsDetailViewBuildingLogic {
  
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
