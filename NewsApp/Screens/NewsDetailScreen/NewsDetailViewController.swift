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
    
    var interactor: NewsDetailBusinessLogic?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let homePage = "https://www.apple.com"
        let url = URL(string: homePage)
        let request = URLRequest(url: url!)
       
        webView.load(request)
    }
}

// MARK: - News detail display logic
extension NewsDetailViewController: NewsDetailDisplayLogic {
    
}
