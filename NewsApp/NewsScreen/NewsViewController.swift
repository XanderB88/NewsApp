//
//  ViewController.swift
//  NewsApp
//
//  Created by Alexander on 18.01.2022.
//

import UIKit

protocol NewsDisplayLogic: AnyObject {
    
    func displayData()
}

class NewsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: - External variables
    
    // MARK: - Internal variables
    weak var interactor: NewsBusinessLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interactor?.fetchNews()
    }
}

extension NewsViewController: NewsDisplayLogic {
    
    func displayData() {
        
    }
}



