//
//  UpcomingEventsHeader.swift
//  Cheque!
//
//  Created by Riya Jaggi on 11/29/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class UpcomingEventsHeader: UICollectionReusableView {
    
    var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    
        
        label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "YOUR UPCOMING EVENTS"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textColor = UIColor.black
        label.backgroundColor = UIColor.white
        addSubview(label)
    }
    
    override func updateConstraints() {
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            ])
        super.updateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

