//
//  NewsModelTests.swift
//  NewsModelTests
//
//  Created by Alexander on 18.01.2022.
//

import XCTest
@testable import NewsApp

class NewsModelTests: XCTestCase {

    
    func testInitNewsWithProperties() {
        
        let news = News(objectID: "Foo", title: "Bar", url: "Baz", author: "Qux")
        
        XCTAssertNotNil(news)
    }
   
    func testInitNewsResultWithNews() {
        
        let news = [
            News(objectID: "Foo", title: "Bar", url: "Baz", author: "Qux")
        ]
       
        let newsResult = NewsResult(hits: news)
        
        XCTAssertNotNil(newsResult)
    }
    
    func testWhenGivenPropertiesSetProperties() {
        
        let news = News(objectID: "Foo", title: "Bar", url: "Baz", author: "Qux")
        
        XCTAssertEqual(news.objectID, "Foo")
        XCTAssertEqual(news.title, "Bar")
        XCTAssertEqual(news.url, "Baz")
        XCTAssertEqual(news.author, "Qux")
    }
}
