//
//  MBDataRepository.swift
//  MedBook
//
//  Created by PRITESH SINGH on 11/08/23.
//

import Foundation

typealias MBResponseCompletionHandler = (_ result: [AnyHashable:Any]?, _ error: String?) -> Void

protocol MBDataRepository {
    func fetch(_ completion: @escaping MBResponseCompletionHandler)
}
