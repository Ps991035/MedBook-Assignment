//
//  SignupEmailValidation.swift
//  MedBook
//
//  Created by PRITESH SINGH on 10/08/23.
//

import Foundation

class SignupEmailValidation: SignupValidation {
    
    private var email: String?
    
    init(userEmail: String?){
        self.email = userEmail
    }
    
    func isValidationPassed() -> Bool {
        return email?.isValidEmail() ?? false
    } 
}
