//
//  NewsDetailViewControllerSpy.swift
//  NewsAppTests
//
//  Created by Alexander on 01.02.2022.
//

import Foundation
@testable import NewsApp

class NewsDetailViewControllerSpy: NewsDetailDisplayLogic {
   
    private(set) var isCalledDisplayPage = false
    
    func displayPage(request: URLRequest) {
        
        isCalledDisplayPage = true
    }
}
