//
//  GroupsViewController.swift
//  Cheque!
//
//  Created by Riya Jaggi on 12/2/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController {
    
    var groupHeader: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        
    groupHeader = UILabel()
    groupHeader.translatesAutoresizingMaskIntoConstraints = false
    groupHeader.text = "Create"
    groupHeader.textAlignment = .center
    groupHeader.font = UIFont.systemFont(ofSize: 40, weight: .bold)
    groupHeader.textColor = UIColor.black
    view.addSubview(groupHeader)
        
    setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            groupHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            groupHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            groupHeader.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            groupHeader.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            groupHeader.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
