//
//  NewsDetailViewInteractorSpy.swift
//  NewsAppTests
//
//  Created by Alexander on 01.02.2022.
//

import Foundation
@testable import NewsApp

class NewsDetailViewInteractorSpy: NewsDetailBusinessLogic, NewsDetailViewDataStore {
    
    var newsDetailUrl: String = ""
    
   
    private(set) var isCalledMakeRequest = false
 
    func makeRequest() {
        
        isCalledMakeRequest = true
    }
}
