//
//  Assembly.swift
//  NewsApp
//
//  Created by Alexander on 19.01.2022.
//

import UIKit

protocol AssemblyBuilder {
    
    func buildNewsScreen() -> UIViewController
}

class Assembly: AssemblyBuilder {
  
    func buildNewsScreen() -> UIViewController {
        
        let viewController = NewsViewController()
        let presenter = NewsViewPresenter()
        let interactor = NewsViewInteractor()
        
        interactor.presenter = presenter
        presenter.viewController = viewController
        viewController.interactor = interactor
        
        return viewController
    }
}
