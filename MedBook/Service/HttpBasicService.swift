//
//  HttpBasicService.swift
//  MedBook
//
//  Created by PRITESH SINGH on 11/08/23.
//

import Foundation

class HttpBasicService: BasicService {
    
    func getAPI(_ url: URL,_ completion: @escaping (_ data: Data?, _ response: URLResponse?, _ error: Error?) -> Void){
        
        let session = URLSession.shared.dataTask(with: URLRequest(url: url), completionHandler: {
            data, response, error in
            completion(data, response, error)
            
        })
        session.resume()
    }
    
}
