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
        
        print("Im here")
        let viewController = NewsViewController()
        print(viewController)
        let presenter = NewsViewPresenter()
        print(presenter)
        let interactor = NewsViewInteractor()
        print(interactor)
        
        interactor.presenter = presenter
        presenter.viewController = viewController
        viewController.interactor = interactor
        
        return viewController
    }
}
