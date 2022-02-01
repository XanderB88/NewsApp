//
//  NewsDetailViewPresenterTests.swift
//  NewsAppTests
//
//  Created by Alexander on 01.02.2022.
//

import XCTest
@testable import NewsApp

class NewsDetailViewPresenterTests: XCTestCase {

    private var sut: NewsDetailViewPresenter!
    private var viewControllerSpy: NewsDetailViewControllerSpy!
    private var testRequest: URLRequest?
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = NewsDetailViewPresenter()
        viewControllerSpy = NewsDetailViewControllerSpy()
       
        sut.viewController = viewControllerSpy
        
        guard let url = URL(string: "https://www.apple.com/") else { return }
        testRequest = URLRequest(url: url)
    }

    override func tearDownWithError() throws {
        
        sut = nil
        viewControllerSpy = nil
        
        try super.tearDownWithError()
    }
    
    func testDisplayPageCalledByPresenter() throws {
        
        // When
        sut.presentRequest(request: testRequest!)
        
        // Then
        XCTAssertTrue(viewControllerSpy.isCalledDisplayPage, "Presenter should calls displayPage(:) method")
    }
}
