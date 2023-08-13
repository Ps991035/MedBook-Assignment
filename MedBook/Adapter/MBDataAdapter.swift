//
//  MBDataAdapter.swift
//  MedBook
//
//  Created by PRITESH SINGH on 12/08/23.
//

import Foundation

class MBDataAdapter: MBAdapter {
    
    /**
     * @param result   List of Countries information
     *  This function set the Countries Data into a model which we are getting in dictionary format.
     */
    
    func getData(result: [AnyHashable : Any]?) -> [MBCountryListModel]? {
        
        guard let result = result else {
            return []
        }
        
        var countries = [MBCountryListModel]()
        let data = result["data"] as? [AnyHashable:Any]
        
        if let _keys = data?.keys {
            for key in _keys {
                let countryData = data?[key] as? [AnyHashable:Any] ?? [:]
                let country = countryData["country"] as? String
                let region = countryData["region"] as? String
                countries.append(MBCountryListModel(country: country,region: region))
                
            }
        }
        return countries
    }
}
