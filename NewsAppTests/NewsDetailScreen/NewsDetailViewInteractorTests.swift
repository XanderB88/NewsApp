//
//  NewsDetailViewInteractorTests.swift
//  NewsAppTests
//
//  Created by Alexander on 01.02.2022.
//

import XCTest
@testable import NewsApp

class NewsDetailViewInteractorTests: XCTestCase {

    private var sut: NewsDetailViewInteractor!
    private var presenterSpy: NewsDetailViewPresenterSpy!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = NewsDetailViewInteractor()
        presenterSpy = NewsDetailViewPresenterSpy()
        
        sut.presenter = presenterSpy
        sut.newsDetailUrl = "https://www.apple.com/"
    }

    override func tearDownWithError() throws {
       
        sut = nil
        presenterSpy = nil
        
        try super.tearDownWithError()
    }
    
    func testMakeRequestCallsPresenterPresentRequest() throws {
        
        // When
        sut.makeRequest()
        
        // Then
        XCTAssertTrue(presenterSpy.isCalledPresentRequest, "Presenter should start presentRequest(:) method")
    }
}
