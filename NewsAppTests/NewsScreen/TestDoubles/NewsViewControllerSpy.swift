//
//  NewsViewControllerSpy.swift
//  NewsAppTests
//
//  Created by Alexander on 25.01.2022.
//

import Foundation
@testable import NewsApp

class NewsViewControllerSpy: NewsDisplayLogic {
    
    private(set) var isCalledViewControllerDisplay = false
    private(set) var displayedNews: [NewsCellModel] = []
  
    func display(data: [NewsCellModel]) {
        
        self.displayedNews = data
        isCalledViewControllerDisplay = true
    }
}
