//
//  NewsViewInteractorSpy.swift
//  NewsAppTests
//
//  Created by Alexander on 29.01.2022.
//

import Foundation
@testable import NewsApp

class NewsViewInteractorSpy: NewsBusinessLogic {
    
    private(set) var isCalledInteractorFetchNews = false
   
    func fetchNews() {
        
        isCalledInteractorFetchNews = true
    }
    
}
