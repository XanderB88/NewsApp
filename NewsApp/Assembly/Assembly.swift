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
        let worker = NetworkService()
        let presenter = NewsViewPresenter(viewController: viewController)
        let interactor = NewsViewInteractor(presenter: presenter, worker: worker)
        
        viewController.interactor = interactor
        
        return viewController
    }
}
