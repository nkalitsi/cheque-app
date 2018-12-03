//
//  SingleEventViewController.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 12/2/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class SingleEventViewController: UIViewController {
    
    var event: Event!
    var checkinButton: UIButton!
    
    let myRed = UIColor(red: 255/255, green: 14/255, blue: 17/255, alpha: 1)
    let myPink = UIColor(red: 255/255, green: 118/255, blue: 127/255, alpha: 1)
    let myGrey = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = event.eventName
        
        view.backgroundColor = myGrey
        
        checkinButton = UIButton()
        checkinButton.titleLabel?.text = "Check In"
        checkinButton.tintColor = .black
        checkinButton.translatesAutoresizingMaskIntoConstraints = false
        checkinButton.layer.cornerRadius = 9
        view.addSubview(checkinButton)
        
        
        
        let layer = CAGradientLayer()
        layer.colors = [myRed.cgColor, myPink.cgColor]
        layer.frame = CGRect(x: 0, y: 0, width: 125, height: 120)
        view.layer.addSublayer(layer)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            checkinButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            checkinButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            checkinButton.widthAnchor.constraint(equalToConstant: 100),
            checkinButton.bottomAnchor.constraint(equalTo: checkinButton.topAnchor, constant: 80)
            ])
        NSLayoutConstraint.activate([
            
            ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
