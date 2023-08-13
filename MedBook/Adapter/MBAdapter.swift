//
//  MBAdapter.swift
//  MedBook
//
//  Created by PRITESH SINGH on 12/08/23.
//

import Foundation

protocol MBAdapter {
    func getData(result: [AnyHashable:Any]?) -> [MBCountryListModel]?
}
