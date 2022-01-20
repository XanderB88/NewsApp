//
//  ViewController.swift
//  NewsApp
//
//  Created by Alexander on 18.01.2022.
//

import UIKit

protocol NewsDisplayLogic: AnyObject {
    
    func display(data: [NewsCellModel])
}

class NewsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - External variables
    
    // MARK: - Internal variables
    var interactor: NewsBusinessLogic?
   
    private var dataToDisplay = [NewsCellModel]()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    
        interactor?.fetchNews()
    }
    
    // MARK: - Internal logic
    private func configureTableView() {
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: NewsTableViewCell.cellIdentifier)
    }
}

// MARK: - Table view data source implementation
extension NewsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsTableViewCell.cellIdentifier, for: indexPath) as? NewsTableViewCell else { return UITableViewCell()}
      
        cell.setup(data: dataToDisplay[indexPath.row])
       
        return cell
    }
}

// MARK: - Table view delegate implementation
extension NewsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - News display logic implementation
extension NewsViewController: NewsDisplayLogic {
    
    func display(data: [NewsCellModel]) {
        
        dataToDisplay.removeAll()
        dataToDisplay.append(contentsOf: data)
        tableView.reloadData()
    }
}



