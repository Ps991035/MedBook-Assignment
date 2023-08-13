//
//  RealmManager.swift
//  MedBook
//
//  Created by PRITESH SINGH on 13/08/23.
//

import Foundation
import Realm
import RealmSwift

final class RealmManager {
    
    private var database: Realm?
    private var realmValue: Results<UserDetailDBModel>?
    
    init() {
        do {
            database = try Realm()
        }catch {}
    }
    
    func addData(object: Object){
        
        do {
            try database?.write {
                database?.add(object, update: .all)
            }
        }catch {
            debugPrint("Error is \(error)")
        }
    }
    
    func getObjectsFromDB(object: Object.Type) -> Results<Object>? {
        if let results: Results<Object> = database?.objects(object.self) {
            return results
        }
        return nil
    }
    
    func getObjectsFromDB(object: Object.Type, primaryKey: String) -> Object? {
        if let result: Object = database?.object(ofType: object, forPrimaryKey: primaryKey) {
            return result
        }
        return nil
    }
}
