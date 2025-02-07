//
//  NetworkService.swift
//  aivoicedemodoubao
//
//  Created by Laoji Zhang on 2025/2/7.
//


import Foundation

class NetworkService {
    static func fetchData(completion: @escaping (Result<String, Error>) -> Void) {
        guard let url = URL(string: "https://example.com/api/data") else {
            completion(.failure(NSError(domain: "Invalid URL", code: -1, userInfo: nil)))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            if let data = data, let stringData = String(data: data, encoding: .utf8) {
                completion(.success(stringData))
            } else {
                completion(.failure(NSError(domain: "Data parsing error", code: -2, userInfo: nil)))
            }
        }
        
        task.resume()
    }
}