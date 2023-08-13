//
//  MBExtension.swift
//  MedBook
//
//  Created by PRITESH SINGH on 10/08/23.
//

import Foundation
import UIKit

extension String {
    
    func containsSpecialCharacter() -> Bool {
        let specialCharacterRegex = ".*[^A-Za-z0-9].*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", specialCharacterRegex)
        return predicate.evaluate(with: self)
    }
    
    func isValidEmail() -> Bool {
        let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}

extension UIViewController {
    
    func showToast(message: String, duration: TimeInterval = 4.0) {
        let toastLabel = UILabel()
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center
        toastLabel.font = UIFont.systemFont(ofSize: 14)
        toastLabel.text = message
        toastLabel.numberOfLines = 0
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10
        toastLabel.clipsToBounds = true
        
        let toastWidth: CGFloat = min(view.frame.size.width - 40, 300)
        let toastHeight: CGFloat = 35
        toastLabel.frame = CGRect(x: view.frame.size.width / 2 - toastWidth / 2,
                                  y: view.frame.size.height - toastHeight - 40,
                                  width: toastWidth,
                                  height: toastHeight)
        
        view.addSubview(toastLabel)
        
        UIView.animate(withDuration: duration, delay: 0.2, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: { _ in
            toastLabel.removeFromSuperview()
        })
    }
}
