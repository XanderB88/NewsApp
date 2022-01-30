//
//  NewsViewInteractorTests.swift
//  NewsAppTests
//
//  Created by Alexander on 23.01.2022.
//

import XCTest
@testable import NewsApp

class NewsViewInteractorTests: XCTestCase {

    private var workerSpy: NetworkServiceSpy!
    private var presenterSpy: NewsViewPresenterSpy!
    private var sut: NewsViewInteractor!
    
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = NewsViewInteractor()
        workerSpy = NetworkServiceSpy()
        presenterSpy = NewsViewPresenterSpy()
        
        sut.worker = workerSpy
        sut.presenter = presenterSpy
    }
    
    override func tearDownWithError() throws {
       
        sut = nil
        workerSpy = nil
        presenterSpy = nil
        
        try super.tearDownWithError()
    }
    
    func testFetchNewsCallsWorkerToFetch() throws {
        
        // When
        sut.fetchNews()
        
        // Then
        XCTAssertTrue(workerSpy.isCalledFetchNews, "Worker should start fetchNews() method")
    }
    
    func testFetchNewsCallsPresenterToFetch() throws {
        
        // When
        sut.fetchNews()
        
        // Then
        XCTAssertTrue(presenterSpy.isCalledPresentFetchedNews, "Presenter should start present(:) method")
    }
    
    func testFetchNewsCallsPresenterToFormatFetchedNews() throws {
        
        // When
        sut.fetchNews()
        
        // Then
        XCTAssertEqual(presenterSpy.newsArticles.count, workerSpy.newsArticles.count, "fetchedNews() should ask the presenter to format the same amount of news it fetched")
    }

}
