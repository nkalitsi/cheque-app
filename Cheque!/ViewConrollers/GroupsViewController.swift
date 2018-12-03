//
//  GroupsViewController.swift
//  Cheque!
//
//  Created by Riya Jaggi on 12/2/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout  {
    
    var groupsHeaderLabel: UILabel!
    var groupCollectionView: UICollectionView!
    
    let groupCellReuseIdentifier = "groupCellReuseIdentifier"
    let padding: CGFloat = 20
    
    var groupArray: [Group]!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
       
        let group1 = Group(groupname: "AppDev", admin: "xxx", description: "group description", website: "https://www.cornellappdev.com")
        let group2 = Group(groupname: "WICC", admin: "yyy", description: "group description", website: "https://wicc.acm.org")
        let group3 = Group(groupname: "Knight Writing", admin: "zzz", description: "group description", website: "Knight Writing")
        
        groupArray = [group1, group2, group3]
        
        groupsHeaderLabel = UILabel()
        groupsHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        groupsHeaderLabel.text = "Hello, Ellie!"
        groupsHeaderLabel.textAlignment = .center
        groupsHeaderLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        groupsHeaderLabel.textColor = UIColor.black
        view.addSubview(groupsHeaderLabel)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        
        groupCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        groupCollectionView.translatesAutoresizingMaskIntoConstraints = false
        groupCollectionView.dataSource = self
        groupCollectionView.delegate = self
        groupCollectionView.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        groupCollectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        groupCollectionView.register(GroupCollectionViewCell.self, forCellWithReuseIdentifier: groupCellReuseIdentifier)
        view.addSubview(groupCollectionView)
        
       setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            groupsHeaderLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            groupsHeaderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            groupsHeaderLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            groupsHeaderLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            groupsHeaderLabel.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        NSLayoutConstraint.activate([
            groupCollectionView.topAnchor.constraint(equalTo: groupsHeaderLabel.bottomAnchor, constant: 30),
            groupCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            groupCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            groupCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groupArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let length = (collectionView.frame.width - padding * 3)/2
        return CGSize(width: length, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: groupCellReuseIdentifier, for: indexPath) as! GroupCollectionViewCell
        let group = groupArray[indexPath.item]
        cell.configure(for: group)
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.setNeedsUpdateConstraints()
        return cell
    }
    

    



}
