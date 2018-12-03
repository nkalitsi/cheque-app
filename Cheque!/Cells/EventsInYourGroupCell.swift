//
//  EventsInYourGroupCell.swift
//  Cheque!
//
//  Created by Riya Jaggi on 11/29/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class InsetLabel: UILabel {
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, UIEdgeInsets(top: 1, left: 10, bottom: 1, right: 10)))
    }
}

class EventsInYourGroupCell: UICollectionViewCell {
    var nameLabel: InsetLabel!
    var locationLabel: InsetLabel!
    var timeLabel: UILabel!
    var dateLabel: UILabel!
    var groupLabel: InsetLabel!
    

    //trying to make background gradient
    let myRed = UIColor(red: 255/255, green: 14/255, blue: 17/255, alpha: 1)
    let myPink = UIColor(red: 255/255, green: 118/255, blue: 127/255, alpha: 1)
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = UIColor.white
        

        //background gradient
        let layer = CAGradientLayer()
        layer.colors = [myRed.cgColor, myPink.cgColor]
        layer.frame = CGRect(x: 0, y: 0, width: 135, height: 125)
        contentView.layer.addSublayer(layer)
        
        nameLabel = InsetLabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        nameLabel.textColor = UIColor.black
        nameLabel.backgroundColor = UIColor.white
        contentView.addSubview(nameLabel)
        
        locationLabel = InsetLabel()
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        locationLabel.textColor = UIColor.black
        locationLabel.backgroundColor = UIColor.white
        contentView.addSubview(locationLabel)
        
        timeLabel = UILabel()
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.font = UIFont.systemFont(ofSize: 30 , weight: .regular)
        timeLabel.textAlignment = .center
        timeLabel.textColor = UIColor.white
        //timeLabel.backgroundColor = UIColor.init(displayP3Red: 255/255, green: 118/255, blue: 127/255, alpha: 1)
        timeLabel.textColor = UIColor.black
        contentView.addSubview(timeLabel)

        dateLabel = UILabel()
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        dateLabel.textAlignment = .center
        dateLabel.numberOfLines = 0
        dateLabel.lineBreakMode = .byWordWrapping
        dateLabel.textColor = UIColor.white
        dateLabel.textColor = UIColor.black
        contentView.addSubview(dateLabel)
        
        groupLabel = InsetLabel()
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        groupLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        groupLabel.textColor = UIColor.black
        groupLabel.backgroundColor = UIColor.white
        contentView.addSubview(groupLabel)
        
        
    }
    
    
    override func updateConstraints() {
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),

            dateLabel.widthAnchor.constraint(equalToConstant: 135),
            dateLabel.heightAnchor.constraint(equalToConstant: 70)
            ])
        
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            timeLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor),
            timeLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
            timeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            ])
        
        
        NSLayoutConstraint.activate([

            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 50),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            ])
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            locationLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),

            locationLabel.heightAnchor.constraint(equalToConstant: 25)
            ])
        
        NSLayoutConstraint.activate([
            groupLabel.topAnchor.constraint(equalTo: locationLabel.bottomAnchor),
            groupLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            groupLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            groupLabel.bottomAnchor.constraint(equalTo: timeLabel.bottomAnchor)
            ])
        
        super.updateConstraints()
    }
    
    func configure(for event: Event) {
        nameLabel.text = event.eventName
        groupLabel.text = event.groupName
        dateLabel.text = ([String(event.day), (DateFormatter().monthSymbols[event.month - 1]), String(event.year)]).joined(separator: ", ")
        timeLabel.text = event.timestart
        locationLabel.text = event.eventLocation
//        tagsLabel.text = event.tags.joined(separator: ", ")
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

