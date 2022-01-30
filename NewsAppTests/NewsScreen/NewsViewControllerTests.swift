//
//  NewsViewControllerTests.swift
//  NewsAppTests
//
//  Created by Alexander on 29.01.2022.
//

import XCTest
@testable import NewsApp

class NewsViewControllerTests: XCTestCase {

    private var sut: NewsViewController!
    private var interactor: NewsViewInteractorSpy!
    
    override func setUpWithError() throws {
       try super.setUpWithError()
        
        sut = NewsViewController()
        interactor = NewsViewInteractorSpy()
        
        sut.interactor = interactor
        
        sut.beginAppearanceTransition(true, animated: false)
        sut.endAppearanceTransition()

    }

    override func tearDownWithError() throws {
       
        sut =  nil
        interactor = nil
        
        try super.tearDownWithError()
    }

    func testFetchNewsCalledByViewControllerWhenViewDidLoad() throws {
        
        // When
        sut.viewDidLoad()
        
        // Then
        XCTAssertTrue(interactor.isCalledInteractorFetchNews, "View Controller should start interactor.fetchNews()")
    }
    
    func testViewModelShouldEqualNumberOfNewsToDisplay() throws {
        
        // Given
        let viewModel: [NewsCellModel] = [NewsCellModel(title: "Foo", author: "Bar", url: "Baz")]
        
        // When
        sut.display(data: viewModel)
        
        // Then
        XCTAssertEqual(sut.dataToDisplay.count, viewModel.count, "The number of table view rows should equal the number of news to display")
    }
    
    func testShouldConfigureTableViewCellToDisplayOrder() throws {
        
        // Given
        let tableView = sut.tableView
        let viewModel: [NewsCellModel] = [NewsCellModel(title: "Foo", author: "Bar", url: "Baz")]
        sut.display(data: viewModel)
        
        // When
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = sut.tableView(tableView!, cellForRowAt: indexPath) as! NewsTableViewCell
        
        // Then
        XCTAssertEqual(cell.titleLabel.text, "Foo", "A properly configured table view cell should display the news title")
        XCTAssertEqual(cell.authorLabel.text, "Bar", "A properly configured table view cell should display the news author")
    }
}
