//
//  EventTableViewCell.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 11/26/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit
/**
 An event has a couple things:
 Date
 Name of event
 who made the event
 and location */


class EventTableViewCell: UITableViewCell {
    let padding: CGFloat = 5
    let infoWidth: CGFloat = 100
    let fontSize: CGFloat = 12
    var event: Event!
    let myRed = UIColor(red: 255/255, green: 14/255, blue: 17/255, alpha: 1)
    let myPink = UIColor(red: 255/255, green: 118/255, blue: 127/255, alpha: 1)
    
    var monthAbbrevLabel: UILabel!
    var monthAbbrev: String!
    
    var day: Int!
    var dayLabel: UILabel!
    
    var yearLabel: UILabel!
    var year: Int!
    
    var eventNameLabel: UILabel!
    var eventName: String!
    
    var locationLabel: UILabel!
    var eventLocation: String!
    
    
    
    //fonts
    let heeboBlack = UIFont(name: "Heebo-Black", size: UIFont.systemFontSize)
    let heeboBold = UIFont(name: "Heebo-Bold", size: UIFont.systemFontSize)
    let heeboRegular = UIFont(name: "Heebo-Regular", size: UIFont.systemFontSize)
    let heebo = UIFont(name: "Heebo-Black", size: UIFont.systemFontSize)


    
    //add spacing between cells
    override var frame: CGRect {
        get {
            return super.frame
        }
        set (newFrame) {
            var frame =  newFrame
            frame.origin.y += 4
            frame.size.height -= 2 * 5
            super.frame = frame
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //makes background clear
        contentView.backgroundColor = .clear

        //trying to make background gradient
        let layer = CAGradientLayer()
        layer.colors = [myRed.cgColor, myPink.cgColor]
        layer.frame = CGRect(x: 0, y: 0, width: 125, height: 125)
        contentView.layer.addSublayer(layer)
        
        self.backgroundColor = UIColor(red: 0.627, green: 0.811, blue: 0.827, alpha: 1.0)
        
        
        monthAbbrevLabel = UILabel()
        monthAbbrevLabel.translatesAutoresizingMaskIntoConstraints = false
        monthAbbrevLabel.font = UIFont(name: "Heebo-Light", size: 14)
        contentView.addSubview(monthAbbrevLabel)
        
        dayLabel = UILabel()
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        dayLabel.font = UIFont(name: "Heebo-Light", size: 14)
        contentView.addSubview(dayLabel)
        
        yearLabel = UILabel()
        yearLabel.translatesAutoresizingMaskIntoConstraints = false
        yearLabel.font = UIFont(name: "Heebo-Light", size: 14)
        contentView.addSubview(yearLabel)
        
        eventNameLabel = UILabel()
        eventNameLabel.translatesAutoresizingMaskIntoConstraints = false
        eventNameLabel.font = UIFont(name: "Heebo-Black", size: 20)
        contentView.addSubview(eventNameLabel)
        
        locationLabel = UILabel()
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.font = UIFont(name: "Heebo-Light", size: 16)
        contentView.addSubview(locationLabel)
        
        setupConstraints()
    }
    
    
    
    //Setup constraints for labels within event table view cell
    //Must set up for month, day, year, eventname, and location
    func setupConstraints() {
        NSLayoutConstraint.activate([
            monthAbbrevLabel.centerYAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.centerYAnchor),
            monthAbbrevLabel.centerXAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.centerXAnchor, constant: -140),
//            monthAbbrevLabel.heightAnchor.constraint(equalToConstant: infoWidth)
            ])
        
        NSLayoutConstraint.activate([
            dayLabel.centerYAnchor.constraint(equalTo: monthAbbrevLabel.centerYAnchor, constant: -15),
            dayLabel.centerXAnchor.constraint(equalTo: monthAbbrevLabel.centerXAnchor)
            ])

        NSLayoutConstraint.activate([
            yearLabel.centerYAnchor.constraint(equalTo: monthAbbrevLabel.centerYAnchor, constant: 20),
            yearLabel.centerXAnchor.constraint(equalTo: monthAbbrevLabel.centerXAnchor)
            ])
        
        NSLayoutConstraint.activate([
            eventNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 130),
            eventNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 11),
            eventNameLabel.bottomAnchor.constraint(equalTo: eventNameLabel.topAnchor, constant: 30)
            ])
        
        NSLayoutConstraint.activate([
            locationLabel.leadingAnchor.constraint(equalTo: eventNameLabel.leadingAnchor),
            locationLabel.topAnchor.constraint(equalTo: eventNameLabel.bottomAnchor)
            ])
    }
    
    func configure(event: Event) {
//        monthAbbrev = (DateFormatter().monthSymbols[event.month - 1])
//        day = event.day
//        year = event.year
//        eventName = event.eventName
//        location = event.location
        monthAbbrevLabel.text = (DateFormatter().monthSymbols[event.month - 1])
        dayLabel.text = String(event.day)
        yearLabel.text = String(event.year)
        eventNameLabel.text = event.eventName
        locationLabel.text = event.eventLocation

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
