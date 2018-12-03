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
    var eventNameLabel: UILabel!
    var timeLabel: UILabel!
    var dateLabel: UILabel!
    var descriptionLabel: UILabel!
    
    var infoBackground: UIView!
    
    let myRed = UIColor(red: 255/255, green: 14/255, blue: 17/255, alpha: 1)
    let myPink = UIColor(red: 255/255, green: 118/255, blue: 127/255, alpha: 1)
    let myGrey = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
    let myDarkGrey = UIColor(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = event.eventName
        
        checkinButton = UIButton()
        checkinButton.titleLabel?.text = "Check In"
        checkinButton.titleLabel?.textColor = .white
        checkinButton.translatesAutoresizingMaskIntoConstraints = false
        checkinButton.backgroundColor = .red
        checkinButton.layer.cornerRadius = 9
        view.addSubview(checkinButton)
        
        view.backgroundColor = myGrey
        
        
        infoBackground = UIView()
        infoBackground.backgroundColor = .white
        infoBackground.translatesAutoresizingMaskIntoConstraints = false
        infoBackground.layer.cornerRadius = 9
        view.addSubview(infoBackground)
        
        eventNameLabel = UILabel()
        eventNameLabel.text = event.eventName
        eventNameLabel.font = UIFont(name: "Avenir-Heavy", size: 20)
        eventNameLabel.translatesAutoresizingMaskIntoConstraints = false
        eventNameLabel.backgroundColor = .white
        view.addSubview(eventNameLabel)
        
        timeLabel = UILabel()
        timeLabel.text = event.timestart + " – " + event.timeend
        timeLabel.font = UIFont(name: "Poppins-Regular", size: 16)
        timeLabel.textColor = myDarkGrey
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.backgroundColor = .white
        view.addSubview(timeLabel)
        

        
        dateLabel = UILabel()
        dateLabel.text = (DateFormatter().monthSymbols[event.month - 1]) + " " + String(event.day) + " "
            + String(event.year)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.font = UIFont(name: "Poppins-Regular", size: 16)
        view.addSubview(dateLabel)
        
        descriptionLabel = UILabel()
        descriptionLabel.text = event.description
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.font = UIFont(name: "Avenir-Medium", size: 14)
        
        view.addSubview(descriptionLabel)

        
        
        
//        let ev = Event(name: <#T##String#>, timestart: <#T##String#>, timeend: <#T##String#>, day: <#T##Int#>, month: <#T##Int#>, year: <#T##Int#>, eventLocation: <#T##String#>, description: <#T##String#>, id: <#T##Int#>, group: <#T##String#>)
        
        let layer = CAGradientLayer()
        layer.colors = [myRed.cgColor, myPink.cgColor]
        layer.frame = CGRect(x: 0, y: 0, width: 125, height: 120)
        view.layer.addSublayer(layer)
        
        
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            checkinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkinButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -210),
            checkinButton.heightAnchor.constraint(equalToConstant: 50),
            checkinButton.widthAnchor.constraint(equalToConstant: 100)
            ])
        

        
        NSLayoutConstraint.activate([
            eventNameLabel.topAnchor.constraint(equalTo: checkinButton.bottomAnchor, constant: 25),
            eventNameLabel.bottomAnchor.constraint(equalTo: eventNameLabel.topAnchor, constant: 30),
            eventNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            eventNameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50)
            ])
        
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: eventNameLabel.bottomAnchor, constant: 1),
            dateLabel.leadingAnchor.constraint(equalTo: eventNameLabel.leadingAnchor),
            dateLabel.trailingAnchor.constraint(equalTo: eventNameLabel.trailingAnchor),
            dateLabel.bottomAnchor.constraint(equalTo: timeLabel.topAnchor, constant: 1)
            ])
        
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 10),
            timeLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor),
            timeLabel.trailingAnchor.constraint(equalTo: dateLabel.trailingAnchor),
            timeLabel.bottomAnchor.constraint(equalTo: timeLabel.topAnchor, constant: 15)
            ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: timeLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: timeLabel.trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: 60)
            ])
        
        NSLayoutConstraint.activate([
            infoBackground.topAnchor.constraint(equalTo: checkinButton.bottomAnchor, constant: 10),
            infoBackground.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
            infoBackground.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
            infoBackground.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10)
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
