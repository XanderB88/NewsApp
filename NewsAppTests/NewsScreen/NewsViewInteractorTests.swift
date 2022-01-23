//
//  NewsViewInteractorTests.swift
//  NewsAppTests
//
//  Created by Alexander on 23.01.2022.
//

import XCTest
@testable import NewsApp

class NewsViewInteractorTests: XCTestCase {

    private var worker: NetworkServiceSpy!
    private var presenter: NewsViewPresenterSpy!
    private var sut: NewsViewInteractor!
    
    override func setUp() {
        super.setUp()
        
        worker = NetworkServiceSpy()
        presenter = NewsViewPresenterSpy()
        sut = NewsViewInteractor(presenter: presenter, worker: worker)
    }

    override func tearDown() {
        worker = nil
        presenter = nil
        sut = nil
        
        super.tearDown()
    }
    
    func testFetchNews() {
        
        sut.fetchNews()
        
        XCTAssertTrue(worker.isCalledFetchNews, "Not started worker.fetchNews(:)")
//        XCTAssertTrue(presenter.isCalledPresentFetchedNews, "Not started presenter.present(:)")
    }

}
