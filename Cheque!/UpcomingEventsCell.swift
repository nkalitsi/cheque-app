//
//  UpcomingEventsCell.swift
//  Cheque!
//
//  Created by Riya Jaggi on 11/30/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class UpcomingEventsCell: UICollectionViewCell {
    var nameLabel: InsetLabel!
    var dateLabel: InsetLabel!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = UIColor.white
        
        nameLabel = InsetLabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        nameLabel.textColor = UIColor.black
        nameLabel.backgroundColor = UIColor.white
        contentView.addSubview(nameLabel)
        
        dateLabel = InsetLabel()
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        dateLabel.backgroundColor = UIColor.white
        dateLabel.textColor = UIColor.black
        contentView.addSubview(dateLabel)
        
    }
    
    override func updateConstraints() {

        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            nameLabel.widthAnchor.constraint(equalToConstant: 250)
            ])
        
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: nameLabel.topAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
            ])
        
        super.updateConstraints()
    }
    
    func configure(for event: Event) {
        nameLabel.text = event.eventName
        dateLabel.text = ([String(event.day), (DateFormatter().monthSymbols[event.month - 1]), String(event.year)]).joined(separator: ", ")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
