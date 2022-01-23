//
//  NetworkServiceSpy.swift
//  NewsAppTests
//
//  Created by Alexander on 23.01.2022.
//

import Foundation
@testable import NewsApp

class NetworkServiceSpy: NetworkServiceWorkingLogic {
   
    private(set) var isCalledFetchNews = false
    
    let newsResult: [News] = [
        News(objectID: "Foo", title: "Bar", url: "Baz", author: "Qux"),
        News(objectID: "Qux", title: "Baz", url: "Bar", author: "Foo")
    ]
   
    func fetchNews(completionHandler: @escaping (Result<[News], Error>) -> Void) {
        
        isCalledFetchNews = true
        completionHandler(.success(newsResult))
    }
}
