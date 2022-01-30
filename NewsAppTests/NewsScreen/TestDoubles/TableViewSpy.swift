//
//  TableViewSpy.swift
//  NewsAppTests
//
//  Created by Alexander on 30.01.2022.
//

import UIKit
@testable import NewsApp

class TableViewSpy: UITableView {
    
    private(set) var reloadDataCalled = false
    
    override func reloadData() {
        
        reloadDataCalled = true
    }
}
