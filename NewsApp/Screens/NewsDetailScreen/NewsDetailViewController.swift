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

    }
}
