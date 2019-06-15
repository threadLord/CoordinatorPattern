//
//  UserViewController.swift
//  CoordinatorPattern
//
//  Created by OSX on 6/15/19.
//  Copyright © 2019 OSX. All rights reserved.
//

import UIKit


protocol UserViewControllerDelegate {
    func switchVeiwTo(nibName: String?)
}



class UserViewController: UIViewController {

    
    var loginView = Login()
    var registerView = Register()
    var changeProfile = ChangeProfile()
    var activityView = ActivityView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        print("LOADED USERVIEWCONTROLLER")
        loadFirstView()
    }
    

   

}

extension UserViewController {
    
    func loadFirstView() {
        
        
       
        if let customView = Bundle.main.loadNibNamed("Login", owner: nil, options: nil)!.first as? Login {
//            view.addSubview(customView)
            
            self.view.addSubview(customView)
            view.frame = self.view.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleWidth]
            
//            customView.translatesAutoresizingMaskIntoConstraints(false)
//            contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[view]-0-|", options: NSLayoutConstraint.FormatOptions(0), metrics: nil, views: ["view":customView]))
//
//            contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[view]-0-|", options: NSLayoutConstraint.FormatOptionsNSLayoutConstraint.FormatOptions(0), metrics: nil, views: ["view":customView]))
//
//
        }
//        view.frame = self.view.bounds
//        self.view.addSubview(view)
//
//
//        NSLayoutConstraint.activate([
//            loginView.topAnchor.constraint(equalTo: self.view.topAnchor),
//            loginView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
//            loginView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//            loginView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
//            ])
        
//        loginView = loginView
    }
}


extension UserViewController : UserViewControllerDelegate {
    func switchVeiwTo(nibName: String?) {
//        let view = UINib(nibName: "CustomView", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
        guard let nibName = nibName else {return}
        let view = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)!.first as! UIView // does the same as above
        view.frame = self.view.bounds
        self.view.addSubview(view)
        
    }
}



