//
//  NetworkService.swift
//  NewsApp
//
//  Created by Alexander on 22.01.2022.
//

import Foundation
import Alamofire

protocol NetworkServiceWorkingLogic {
    
    func fetchNews(completionHandler: @escaping (Result<[Article], Error>) -> Void)
}

class NetworkService: NetworkServiceWorkingLogic {
    
    func fetchNews(completionHandler: @escaping (Result<[Article], Error>) -> Void) {
       
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search_by_date?tags=story") else { return }
        
        let urlRequest = URLRequest(url: url)
        
        AF.request(urlRequest).responseDecodable(of: NewsArticles.self) { response in
            
            switch response.result {
                    
                case .success(let result):
                    
                    completionHandler(.success(result.hits))
                
                case .failure(let error):
                    
                    completionHandler(.failure(error))
            }
        }
        
    }
}
