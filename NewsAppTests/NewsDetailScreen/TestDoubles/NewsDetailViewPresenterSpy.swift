//
//  NewsDetailViewPresenterSpy.swift
//  NewsAppTests
//
//  Created by Alexander on 01.02.2022.
//

import Foundation
@testable import NewsApp

class NewsDetailViewPresenterSpy: NewsDetailPresentationLogic {
   
    private(set) var isCalledPresentRequest = false
    
    func presentRequest(request: URLRequest) {
        
        isCalledPresentRequest = true
    }
}
