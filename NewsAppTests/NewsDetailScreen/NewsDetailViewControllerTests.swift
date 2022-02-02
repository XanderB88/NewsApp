//
//  NewsDetailViewControllerTests.swift
//  NewsAppTests
//
//  Created by Alexander on 02.02.2022.
//

import XCTest
@testable import NewsApp

class NewsDetailViewControllerTests: XCTestCase {

    private var sut: NewsDetailViewController!
    private var interactorSpy: NewsDetailViewInteractorSpy!
    
    
    override func setUpWithError() throws {
       try super.setUpWithError()
      
        sut = NewsDetailViewController()
        interactorSpy = NewsDetailViewInteractorSpy()
        sut.interactor = interactorSpy
        
        sut.beginAppearanceTransition(true, animated: false)
        sut.endAppearanceTransition()
        
    }

    override func tearDownWithError() throws {
      
        sut = nil
        interactorSpy = nil
        
        try super.tearDownWithError()
    }
    
    func testMakeRequestCalledViewControllerWhenViewDidLoad() throws {
        
        // Whwn
        sut.viewDidLoad()
        
        // Then
        XCTAssertTrue(interactorSpy.isCalledMakeRequest, "View Controller should start interactor.makeRequst()")
    }
}
