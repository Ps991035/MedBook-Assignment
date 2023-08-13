//
//  MBFactory.swift
//  MedBook
//
//  Created by PRITESH SINGH on 11/08/23.
//

import Foundation

class MBFactory {
    
    var params: MBRepositoryParam?
    
    init(params: MBRepositoryParam?) {
        self.params = params
    }
    
    func getRepository() -> MBDataRepository? {
        
        switch self.params?.apiType {
        case .CountryList:
            return MBCountryListAPIRepository()
        default:
            return nil
        }
    }
}

