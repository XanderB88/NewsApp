//
//  NewsViewPresenterTests.swift
//  NewsAppTests
//
//  Created by Alexander on 25.01.2022.
//

import XCTest
@testable import NewsApp

class NewsViewPresenterTests: XCTestCase {

    private var viewControllerSpy: NewsViewControllerSpy!
    private var sut: NewsViewPresenter!
    private var newsResult: [News]!
    
    
    override func setUpWithError() throws {
       try super.setUpWithError()
        
        sut = NewsViewPresenter()
        viewControllerSpy = NewsViewControllerSpy()
        
        sut.viewController = viewControllerSpy
        
        newsResult = [
            News(objectID: "Foo", title: "Bar", url: "Baz", author: "Qux"),
            News(objectID: "Qux", title: "Baz", url: "Bar", author: "Foo")
        ]
    }

    override func tearDownWithError() throws {
        
        sut = nil
        viewControllerSpy = nil
        
        try super.tearDownWithError()
    }

    func testDisplayFetchedNewsCalledByPresenter() throws {
        
        sut.present(data: [])
        
        XCTAssertTrue(viewControllerSpy.isCalledViewControllerDisplay, "Not started viewController.display(:)")
    }
    
    func testPresentFetchedNewsShouldFormatFetchedNewsForDisplay() throws {
        
        sut.present(data: newsResult)
        
        XCTAssertEqual(viewControllerSpy.displayedNews.count, newsResult.count, "present(:) should ask the view controller to display the same amount of news it recieve")
    }
}
