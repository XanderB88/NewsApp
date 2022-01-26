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
    private(set) var newsArticles: [Article] = [] 
    
    func present(data: [Article]) {
        
        self.newsArticles = data
        isCalledPresentFetchedNews = true
    }
}
