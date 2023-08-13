//
//  SignupSpecialCharacterValidation.swift
//  MedBook
//
//  Created by PRITESH SINGH on 10/08/23.
//

import Foundation

class SignupSpecialCharacterValidation: SignupValidation {
    
    private var text: String?
    
    init(text: String?){
        self.text = text
    }
    
    func isValidationPassed() -> Bool {
        return self.text?.containsSpecialCharacter() ?? false
    }
}
