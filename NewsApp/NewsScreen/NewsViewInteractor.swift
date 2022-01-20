//
//  NewsViewInteractor.swift
//  NewsApp
//
//  Created by Alexander on 19.01.2022.
//

import Foundation

protocol NewsBusinessLogic: AnyObject {
    
    func fetchNews()
}

class NewsViewInteractor {
    
    var presenter: NewsPresentationLogic?
}

// MARK: - News business logic implementation
extension NewsViewInteractor: NewsBusinessLogic {
   
    func fetchNews() {
       
        let newsResponse = [
            News(objectID: "8384545", title: "First news", url: "https://www.google.com", author: "First author"),
            News(objectID: "847953745", title: "Second news", url: "https://www.google.com", author: "Second author"),
            News(objectID: "7436634756", title: "Third news", url: "https://www.google.com", author: "Third author"),
            News(objectID: "47568743", title: "Fours news", url: "https://www.google.com", author: "Fours author"),
            News(objectID: "7346586284", title: "Fifth news", url: "https://www.google.com", author: "Fifth author")
        ]
        
        presenter?.present(data: newsResponse)
    }
}
