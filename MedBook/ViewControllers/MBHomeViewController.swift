//
//  MBHomeViewController.swift
//  MedBook
//
//  Created by PRITESH SINGH on 12/08/23.
//

import Foundation
import UIKit

class MBHomeViewController: UIViewController {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var lblMedbook: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var btnLogout: UIButton!
    
    /**
     *  This class is HomeView. User can Logout from here. If user tap on Logout then they will be redirected to LandingView.
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupUI()
    }
    
    private func setupUI() {
        
        self.contentView.backgroundColor = MBUtility.hexStringToUIColor(hex: "#FAFAFA")
        self.setupLabelUI()
        self.setupButtonUI()
    }
    
    private func setupLabelUI(){
        self.lblMedbook.text = MBConstants().MedBook
        self.lblDescription.text = MBConstants().Which_Topic_Interests_You_Today
        self.lblDescription.textColor = UIColor.black.withAlphaComponent(0.7)
        self.lblMedbook.font = UIFont.systemFont(ofSize: 32, weight: .medium)
        self.lblDescription.font = UIFont.systemFont(ofSize: 28, weight: .regular)
    }
    
    private func setupButtonUI() {
        self.btnLogout.setTitle(MBConstants().Logout, for: .normal)
        self.btnLogout.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        self.btnLogout.titleLabel?.tintColor = UIColor.systemRed
    }
    
    @IBAction func btnLogout(_ sender: Any) {
        if let vc = UIStoryboard(name: MBConstants().Main, bundle: nil).instantiateViewController(withIdentifier: MBConstants().MBLandingViewController) as? MBLandingViewController {
            self.navigationController?.pushViewController(vc, animated: true)
            
            UserDefaults.standard.set(false, forKey: "isLoggedIn")
        }
    }
}
