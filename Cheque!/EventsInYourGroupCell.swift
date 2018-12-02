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
    //var tagsLabel: InsetLabel!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = UIColor.white
        
        nameLabel = InsetLabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameLabel.textColor = UIColor.black
        nameLabel.backgroundColor = UIColor.white
        nameLabel.numberOfLines = 0
        nameLabel.lineBreakMode = .byWordWrapping
        contentView.addSubview(nameLabel)
        
        locationLabel = InsetLabel()
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        locationLabel.textColor = UIColor.black
        locationLabel.backgroundColor = UIColor.white
        contentView.addSubview(locationLabel)
        
        timeLabel = InsetLabel()
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        timeLabel.textAlignment = .center
        timeLabel.backgroundColor = UIColor.init(displayP3Red: 255/255, green: 14/255, blue: 17/255, alpha: 1)
        timeLabel.textColor = UIColor.black
        contentView.addSubview(timeLabel)

        dateLabel = InsetLabel()
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        dateLabel.textAlignment = .center
        dateLabel.numberOfLines = 0
        dateLabel.lineBreakMode = .byWordWrapping
        dateLabel.backgroundColor = UIColor.init(displayP3Red: 255/255, green: 14/255, blue: 17/255, alpha: 1)
        dateLabel.textColor = UIColor.black
        contentView.addSubview(dateLabel)
        
        groupLabel = InsetLabel()
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        groupLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        groupLabel.textColor = UIColor.black
        groupLabel.backgroundColor = UIColor.white
        contentView.addSubview(groupLabel)
        
//        tagsLabel = InsetLabel()
//        tagsLabel.translatesAutoresizingMaskIntoConstraints = false
//        tagsLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
//        tagsLabel.textColor = UIColor.blue
//        tagsLabel.backgroundColor = UIColor.init(displayP3Red: 252/255, green: 239/255, blue: 239/255, alpha: 1)
//        tagsLabel.numberOfLines = 0
//        tagsLabel.lineBreakMode = .byWordWrapping
//        contentView.addSubview(tagsLabel)
        
    }
    
    
    override func updateConstraints() {
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            dateLabel.widthAnchor.constraint(equalToConstant: 125),
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
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            ])
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            locationLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            ])
        
        NSLayoutConstraint.activate([
            groupLabel.topAnchor.constraint(equalTo: locationLabel.bottomAnchor),
            groupLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            groupLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            groupLabel.bottomAnchor.constraint(equalTo: timeLabel.bottomAnchor)
            ])
        
  



        
//        NSLayoutConstraint.activate([
//            tagsLabel.topAnchor.constraint(equalTo: locationLabel.bottomAnchor),
//            tagsLabel.leadingAnchor.constraint(equalTo: locationLabel.leadingAnchor),
//            tagsLabel.trailingAnchor.constraint(equalTo: locationLabel.trailingAnchor),
//            tagsLabel.heightAnchor.constraint(equalToConstant: 55)
//            ])
//
//
        super.updateConstraints()
    }
    
    func configure(for event: Event) {
        nameLabel.text = event.eventName
        groupLabel.text = event.groupName
        dateLabel.text = ([String(event.day), (DateFormatter().monthSymbols[event.month - 1]), String(event.year)]).joined(separator: ", ")
        timeLabel.text = event.time
        locationLabel.text = event.eventLocation
//        tagsLabel.text = event.tags.joined(separator: ", ")
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

