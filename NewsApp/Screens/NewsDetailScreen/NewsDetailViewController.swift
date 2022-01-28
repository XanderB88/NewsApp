//
//  NewsDetailViewController.swift
//  NewsApp
//
//  Created by Alexander on 26.01.2022.
//

import UIKit
import WebKit


protocol NewsDetailDisplayLogic: AnyObject {
    
}

class NewsDetailViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var webView: WKWebView!
    
    // MARK: - External variables
    var router: (NewsDetailRoutingLogic & NewsDetailViewDataPassingLogic)?
    
    // MARK: - Internal variables
    var interactor: (NewsDetailBusinessLogic & NewsDetailViewDataStoreLogic)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        interactor?.loadPage(webView: webView)
    }
}

// MARK: - News detail display logic
extension NewsDetailViewController: NewsDetailDisplayLogic {
    
}
