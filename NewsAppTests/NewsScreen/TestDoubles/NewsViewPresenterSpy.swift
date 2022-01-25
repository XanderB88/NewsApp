//
//  NewsViewPresenterSpy.swift
//  NewsAppTests
//
//  Created by Alexander on 23.01.2022.
//

import Foundation
@testable import NewsApp

class NewsViewPresenterSpy: NewsPresentationLogic {
    
    private(set) var isCalledPresentFetchedNews = false
    private(set) var news: [News] = [] 
    
    func present(data: [News]) {
        
        self.news = data
        isCalledPresentFetchedNews = true
    }
}
