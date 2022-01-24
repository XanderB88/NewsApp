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
    
    func present(data: [News]) {
        
        isCalledPresentFetchedNews = true
    }
}
