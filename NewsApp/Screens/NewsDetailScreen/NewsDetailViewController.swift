//
//  NewsDetailViewController.swift
//  NewsApp
//
//  Created by Alexander on 26.01.2022.
//

import UIKit
import WebKit


protocol NewsDetailDisplayLogic: AnyObject {
    
    func displayPage(request: URLRequest)
}

class NewsDetailViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var webView: WKWebView!
    
    // MARK: - External variables
    var router: NewsDetailViewDataPassing?
    
    // MARK: - Internal variables
    var interactor: (NewsDetailBusinessLogic & NewsDetailViewDataStore)?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        interactor?.makeRequest()
    }
}

// MARK: - News detail display logic
extension NewsDetailViewController: NewsDetailDisplayLogic {
  
    func displayPage(request: URLRequest) {
      
        webView.load(request)
    }
}
