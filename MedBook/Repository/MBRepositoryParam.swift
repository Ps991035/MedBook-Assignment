//
//  MBRepositoryParam.swift
//  MedBook
//
//  Created by PRITESH SINGH on 12/08/23.
//

import Foundation

enum APIType {
    case CountryList
}

struct MBRepositoryParam {
    var apiType: APIType?
}
