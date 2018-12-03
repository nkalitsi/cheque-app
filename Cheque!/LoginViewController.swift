//
//  LoginViewController.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 12/2/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController, GIDSignInUIDelegate {

    let loginButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
    let myPink = UIColor(red: 255/255, green: 118/255, blue: 127/255, alpha: 1)


    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...

        // Do any additional setup after loading the view.
        
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
        
        loginButton.setTitle("Sign in with Google", for: .normal)
        loginButton.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: 16)
//        loginButton.titleLabel?.tintColor = .red
        loginButton.setTitleColor(.red, for: .normal)
        loginButton.backgroundColor = .white
        loginButton.layer.cornerRadius = 9
        loginButton.layer.masksToBounds = true
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(loginButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 170),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func assignbackground(){
        let background = UIImage(named: "signinbackground")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }
    


}
