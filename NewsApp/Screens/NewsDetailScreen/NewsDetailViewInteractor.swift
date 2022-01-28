//
//  NewsDetailViewInteractor.swift
//  NewsApp
//
//  Created by Alexander on 26.01.2022.
//

import Foundation
import WebKit

protocol NewsDetailBusinessLogic {
    
    func loadPage(webView: WKWebView)
}

protocol NewsDetailViewDataStoreLogic: AnyObject {
    
    var newsDetailUrl: String { get set }
}

class NewsDetailViewInteractor: NewsDetailViewDataStoreLogic  {
    
    // MARK: - External variables
    var newsDetailUrl: String = ""
    
    // MARK: - Internal variables
    var presenter: NewsDetailPresentationLogic?
}

// MARK: - News detail business logic
extension NewsDetailViewInteractor: NewsDetailBusinessLogic {
    
    func loadPage(webView: WKWebView) {
        
        let url = URL(string: newsDetailUrl)
        let request = URLRequest(url: url!)
       
        webView.load(request)
    }
}
