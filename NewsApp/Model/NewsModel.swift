//
//  NewsModel.swift
//  NewsApp
//
//  Created by Alexander on 20.01.2022.
//

import Foundation

struct NewsResult: Decodable {
    
    let hits: [News]
    
    init(hits: [News]) {
       
        self.hits = hits
    }
}

struct News: Decodable {
   
    let objectID: String
    let title: String
    let url: String?
    let author: String
    
    init(objectID: String, title: String, url: String?, author: String) {
       
        self.objectID = objectID
        self.title = title
        self.url = url
        self.author = author
    }
}
