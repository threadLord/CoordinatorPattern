//
//  Login.swift
//  CoordinatorPattern
//
//  Created by OSX on 6/15/19.
//  Copyright © 2019 OSX. All rights reserved.
//


import UIKit





@IBDesignable class Login : UIView {
    
   
    
    @IBOutlet var textLabelLogin: UITextField!
    @IBOutlet var textLabelPassword: UITextField!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    
    var delegate : UserViewControllerDelegate?
    
    
    @IBAction func buttonLogin(_ sender: Any) {
        
        
    }
    
    @IBAction func buttonCreateProfile(_ sender: Any) {
        
        delegate?.switchVeiwTo(nibName: "ActivityView")
        
    }
    
    
}
