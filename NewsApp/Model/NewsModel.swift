//
//  NewsModel.swift
//  NewsApp
//
//  Created by Alexander on 20.01.2022.
//

import Foundation

struct NewsResult {
    let hits: [News]
}

struct News {
    let objectID: String
    let title: String
    let url: String
    let author: String
}
