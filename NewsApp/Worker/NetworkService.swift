//
//  NetworkService.swift
//  NewsApp
//
//  Created by Alexander on 22.01.2022.
//

import Foundation

protocol NetworkServiceWorkingLogic {
    
    func fetchNews(completionHandler: @escaping (Result<[News], Error>) -> Void)
}

class NetworkService: NetworkServiceWorkingLogic {
    
    func fetchNews(completionHandler: @escaping (Result<[News], Error>) -> Void) {
       
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search_by_date?tags=story") else { return }
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: url) { data, _, error in
            
            guard let safeData = data else {
               
                completionHandler(.failure(error!))
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
            
                let newsResult = try decoder.decode(NewsResult.self, from: safeData)
                completionHandler(.success(newsResult.hits))
            } catch {
                
                completionHandler(.failure(error))
            }
        }
        task.resume()
    }
}
