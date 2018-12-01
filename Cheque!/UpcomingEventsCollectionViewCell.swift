//
//  UpcomingEventsCollectionViewCell.swift
//  Cheque!
//
//  Created by Riya Jaggi on 11/29/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class InsetLabel: UILabel {
    override func drawText(in rect: CGRect) {
        super.drawText(in: UIEdgeInsetsInsetRect(rect, UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)))
    }
}

class UpcomingEventsCollectionViewCell: UICollectionViewCell {
    var nameLabel: InsetLabel!
    var locationLabel: InsetLabel!
<<<<<<< HEAD
    var timeLabel: UILabel!
    var dateLabel: UILabel!
=======
//    var timeLabel: UILabel!
//    var dateLabel: UILabel!
>>>>>>> 6450a862f455deb5882a80d9c7086355eedfb765
    var groupLabel: InsetLabel!
    var tagsLabel: InsetLabel!
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        contentView.backgroundColor = UIColor.white
        
        
        
        nameLabel = InsetLabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        nameLabel.textColor = UIColor.black
        nameLabel.backgroundColor = UIColor.init(displayP3Red: 252/255, green: 239/255, blue: 239/255, alpha: 1)
        nameLabel.numberOfLines = 0
        nameLabel.lineBreakMode = .byWordWrapping
        contentView.addSubview(nameLabel)
        
        locationLabel = InsetLabel()
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        locationLabel.textColor = UIColor.black
        locationLabel.backgroundColor = UIColor.init(displayP3Red: 252/255, green: 239/255, blue: 239/255, alpha: 1)
        contentView.addSubview(locationLabel)
        
<<<<<<< HEAD
        timeLabel = InsetLabel()
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        timeLabel.backgroundColor = UIColor.init(displayP3Red: 252/255, green: 239/255, blue: 239/255, alpha: 1)
        timeLabel.textColor = UIColor.black
        contentView.addSubview(timeLabel)

        dateLabel = InsetLabel()
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        dateLabel.backgroundColor = UIColor.init(displayP3Red: 252/255, green: 239/255, blue: 239/255, alpha: 1)
        dateLabel.textColor = UIColor.black
        contentView.addSubview(dateLabel)
=======
//        timeLabel = UILabel()
//        timeLabel.translatesAutoresizingMaskIntoConstraints = false
//        timeLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
//        timeLabel.textColor = UIColor.black
//        contentView.addSubview(timeLabel)
//
//        dateLabel = UILabel()
//        dateLabel.translatesAutoresizingMaskIntoConstraints = false
//        dateLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
//        dateLabel.textColor = UIColor.black
//        contentView.addSubview(dateLabel)
>>>>>>> 6450a862f455deb5882a80d9c7086355eedfb765
        
        groupLabel = InsetLabel()
        groupLabel.translatesAutoresizingMaskIntoConstraints = false
        groupLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        groupLabel.textColor = UIColor.black
        groupLabel.backgroundColor = UIColor.init(displayP3Red: 252/255, green: 239/255, blue: 239/255, alpha: 1)
        contentView.addSubview(groupLabel)
        
        tagsLabel = InsetLabel()
        tagsLabel.translatesAutoresizingMaskIntoConstraints = false
<<<<<<< HEAD
        tagsLabel.font = UIFont.systemFont(ofSize: 14, weight: .light)
        tagsLabel.textColor = UIColor.blue
=======
        tagsLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        tagsLabel.textColor = UIColor.black
>>>>>>> 6450a862f455deb5882a80d9c7086355eedfb765
        tagsLabel.backgroundColor = UIColor.init(displayP3Red: 252/255, green: 239/255, blue: 239/255, alpha: 1)
        tagsLabel.numberOfLines = 0
        tagsLabel.lineBreakMode = .byWordWrapping
        contentView.addSubview(tagsLabel)
        
    }
    
    
    override func updateConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
<<<<<<< HEAD
            nameLabel.heightAnchor.constraint(equalToConstant: 40)
=======
            nameLabel.heightAnchor.constraint(equalToConstant: 50)
>>>>>>> 6450a862f455deb5882a80d9c7086355eedfb765
            ])
        
        NSLayoutConstraint.activate([
            groupLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            groupLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            groupLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            groupLabel.heightAnchor.constraint(equalToConstant: 30)
            ])
        
<<<<<<< HEAD
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: groupLabel.bottomAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: groupLabel.leadingAnchor),
            //dateLabel.trailingAnchor.constraint(equalTo: contentView.centerXAnchor),
            dateLabel.widthAnchor.constraint(equalToConstant: 250),
            dateLabel.heightAnchor.constraint(equalToConstant: 25)
            ])
        
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: groupLabel.bottomAnchor),
            timeLabel.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
            timeLabel.trailingAnchor.constraint(equalTo: groupLabel.trailingAnchor),
            timeLabel.heightAnchor.constraint(equalToConstant: 25)
            ])

        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor),
=======
//        NSLayoutConstraint.activate([
//            dateLabel.topAnchor.constraint(equalTo: groupLabel.bottomAnchor),
//            dateLabel.leadingAnchor.constraint(equalTo: groupLabel.leadingAnchor),
//            dateLabel.trailingAnchor.constraint(equalTo: groupLabel.trailingAnchor),
//            dateLabel.heightAnchor.constraint(equalToConstant: 18)
//            ])
        
//        NSLayoutConstraint.activate([
//            timeLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
//            timeLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor),
//            timeLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
//            timeLabel.heightAnchor.constraint(equalToConstant: 18)
//            ])
//
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: groupLabel.bottomAnchor),
>>>>>>> 6450a862f455deb5882a80d9c7086355eedfb765
            locationLabel.leadingAnchor.constraint(equalTo: groupLabel.leadingAnchor),
            locationLabel.trailingAnchor.constraint(equalTo: groupLabel.trailingAnchor),
            locationLabel.heightAnchor.constraint(equalToConstant: 25)
            ])
        
        NSLayoutConstraint.activate([
            tagsLabel.topAnchor.constraint(equalTo: locationLabel.bottomAnchor),
            tagsLabel.leadingAnchor.constraint(equalTo: locationLabel.leadingAnchor),
            tagsLabel.trailingAnchor.constraint(equalTo: locationLabel.trailingAnchor),
<<<<<<< HEAD
            tagsLabel.heightAnchor.constraint(equalToConstant: 55)
=======
            tagsLabel.heightAnchor.constraint(equalToConstant: 20)
>>>>>>> 6450a862f455deb5882a80d9c7086355eedfb765
            ])
        
        
        super.updateConstraints()
    }
    
    func configure(for event: Event) {
        nameLabel.text = event.eventName
        groupLabel.text = event.groupName
<<<<<<< HEAD
        dateLabel.text = ([String(event.day), (DateFormatter().monthSymbols[event.month - 1]), String(event.year)]).joined(separator: ", ")
        timeLabel.text = event.time
        locationLabel.text = event.eventLocation
        tagsLabel.text = event.tags.joined(separator: ", ")
=======
//        dateLabel.text = event.getDate()
//        timeLabel.text = event.getTime()
        locationLabel.text = event.eventLocation
        tagsLabel.text = event.tags.joined(separator: ", ")
        
>>>>>>> 6450a862f455deb5882a80d9c7086355eedfb765
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

