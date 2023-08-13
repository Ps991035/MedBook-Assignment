//
//  MBHelper.swift
//  MedBook
//
//  Created by PRITESH SINGH on 11/08/23.
//

import Foundation

final class MBHelper {
    
    static let shared = MBHelper()
    
    private init() {}
    
    func getFormattedData(_ data: Data) -> [AnyHashable:Any]?{
        
        do{
            return try JSONSerialization.jsonObject(with: data) as? [AnyHashable:Any]
        }
        catch {}
        return nil
    }
    
}

