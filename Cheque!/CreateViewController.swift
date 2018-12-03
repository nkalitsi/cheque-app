//
//  CreateModalViewController.swift
//  Cheque!
//
//  Created by Riya Jaggi on 12/2/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    let padding = 10
    
    var scrollView: UIScrollView!
    
    var createHeader : UILabel!
    var eventNameLabel: InsetLabel!
    var eventNameTextField: UITextField!
    var groupNameLabel: UILabel!
    var groupNameTextField: UITextField!
    var datetimeLabel: UILabel!
    var month: UITextField!
    var day: UITextField!
    var year: UITextField!
    var timestart: UITextField!
    var timeend: UITextField!
    var descriptionLabel: UILabel!
    var descriptionTextField: UITextField!
    var locationLabel: UILabel!
    var locationTextField: UITextField!
    
    var createEventButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView = UIScrollView(frame: view.bounds)
        //scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
       // scrollView.contentSize = view.bounds.size
        scrollView.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.flexibleWidth.rawValue | UIViewAutoresizing.flexibleHeight.rawValue)
        scrollView.isUserInteractionEnabled = true
        scrollView.isScrollEnabled = true
        scrollView.showsVerticalScrollIndicator = true
        view.addSubview(scrollView)
        
        createHeader = UILabel()
        createHeader.translatesAutoresizingMaskIntoConstraints = false
        createHeader.text = "Create"
        createHeader.textAlignment = .center
        createHeader.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        createHeader.textColor = UIColor.black
        scrollView.addSubview(createHeader)
        
        eventNameLabel = InsetLabel()
        eventNameLabel.translatesAutoresizingMaskIntoConstraints = false
        eventNameLabel.text = "Event Name"
        eventNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        eventNameLabel.backgroundColor = UIColor.white
        eventNameLabel.layer.cornerRadius = 10
        eventNameLabel.layer.masksToBounds = true
        eventNameLabel.textColor = UIColor.black
        scrollView.addSubview(eventNameLabel)
        
        eventNameTextField = UITextField()
        eventNameTextField.translatesAutoresizingMaskIntoConstraints = false
        eventNameTextField.text = "Please enter an event name."
        eventNameTextField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        eventNameTextField.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        eventNameTextField.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(eventNameTextField)
        scrollView.bringSubview(toFront: eventNameTextField)
        
        groupNameLabel = InsetLabel()
        groupNameLabel.translatesAutoresizingMaskIntoConstraints = false
        groupNameLabel.text = "Group Name"
        groupNameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        groupNameLabel.backgroundColor = UIColor.white
        groupNameLabel.layer.cornerRadius = 10
        groupNameLabel.layer.masksToBounds = true
        groupNameLabel.textColor = UIColor.black
        scrollView.addSubview(groupNameLabel)
        
        groupNameTextField = UITextField()
        groupNameTextField.translatesAutoresizingMaskIntoConstraints = false
        groupNameTextField.text = "Please enter a group name."
        groupNameTextField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        groupNameTextField.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        groupNameTextField.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(groupNameTextField)
        scrollView.bringSubview(toFront: eventNameTextField)
        
        datetimeLabel = InsetLabel()
        datetimeLabel.translatesAutoresizingMaskIntoConstraints = false
        datetimeLabel.text = "Date and Time"
        datetimeLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        datetimeLabel.backgroundColor = UIColor.white
        datetimeLabel.layer.cornerRadius = 10
        datetimeLabel.layer.masksToBounds = true
        datetimeLabel.textColor = UIColor.black
        scrollView.addSubview(datetimeLabel)
        
        month = UITextField()
        month.translatesAutoresizingMaskIntoConstraints = false
        month.text = "MM"
        month.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        month.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        month.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(month)
        scrollView.bringSubview(toFront: month)
        
        day = UITextField()
        day.translatesAutoresizingMaskIntoConstraints = false
        day.text = "DD"
        day.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        day.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        day.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(day)
        scrollView.bringSubview(toFront: day)
        
        year = UITextField()
        year.translatesAutoresizingMaskIntoConstraints = false
        year.text = "YYYY"
        year.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        year.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        year.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(year)
        scrollView.bringSubview(toFront: year)
        
        timestart = UITextField()
        timestart.translatesAutoresizingMaskIntoConstraints = false
        timestart.text = "00:00PM"
        timestart.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        timestart.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        timestart.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(timestart)
        scrollView.bringSubview(toFront: timestart)
        
        timeend = UITextField()
        timeend.translatesAutoresizingMaskIntoConstraints = false
        timeend.text = "00:00PM"
        timeend.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        timeend.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        timeend.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(timeend)
        scrollView.bringSubview(toFront: timeend)
        
        descriptionLabel = InsetLabel()
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.text = "Description"
        descriptionLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        descriptionLabel.backgroundColor = UIColor.white
        descriptionLabel.layer.cornerRadius = 10
        descriptionLabel.layer.masksToBounds = true
        descriptionLabel.textColor = UIColor.black
        scrollView.addSubview(descriptionLabel)
        
        descriptionTextField = UITextField()
        descriptionTextField.translatesAutoresizingMaskIntoConstraints = false
        descriptionTextField.text = "Please enter an event description."
        descriptionTextField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        descriptionTextField.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        descriptionTextField.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(descriptionTextField)
        scrollView.bringSubview(toFront: descriptionTextField)
        
        
        locationLabel = InsetLabel()
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.text = "Location"
        locationLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        locationLabel.backgroundColor = UIColor.white
        locationLabel.layer.cornerRadius = 10
        locationLabel.layer.masksToBounds = true
        locationLabel.textColor = UIColor.black
        scrollView.addSubview(locationLabel)
        
        locationTextField = UITextField()
        locationTextField.translatesAutoresizingMaskIntoConstraints = false
        locationTextField.text = "Please enter an event location."
        locationTextField.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        locationTextField.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        locationTextField.textColor = UIColor.init(red: 103/255, green: 103/255, blue: 103/255, alpha: 1)
        scrollView.addSubview(locationTextField)
        scrollView.bringSubview(toFront: locationTextField)

        createEventButton = UIButton()
        createEventButton.translatesAutoresizingMaskIntoConstraints = false
        createEventButton.setTitle("Create Event", for: .normal)
        createEventButton.backgroundColor = .white
        createEventButton.layer.cornerRadius = 10
        createEventButton.layer.masksToBounds = true
        createEventButton.setTitleColor(.red, for: .normal)

//        createEventButton.addTarget(self, action: #selector(addEvent()), for: .touchUpInside)

        scrollView.addSubview(createEventButton)
        
        scrollView.contentSize = CGSize(width: self.view.frame.size.width, height: scrollView.frame.size.height)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            createHeader.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor, constant: 30),
            createHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createHeader.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            createHeader.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            createHeader.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        NSLayoutConstraint.activate([
            eventNameLabel.topAnchor.constraint(equalTo: createHeader.bottomAnchor, constant: 30),
            eventNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            eventNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            eventNameLabel.heightAnchor.constraint(equalToConstant: 95)
            ])
        
        NSLayoutConstraint.activate([
            eventNameTextField.topAnchor.constraint(equalTo: eventNameLabel.topAnchor, constant: 70),
            eventNameTextField.leadingAnchor.constraint(equalTo: eventNameLabel.leadingAnchor, constant: 10),
            eventNameTextField.trailingAnchor.constraint(equalTo: eventNameLabel.trailingAnchor, constant: -10),
            eventNameTextField.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            groupNameLabel.topAnchor.constraint(equalTo: eventNameLabel.bottomAnchor, constant: 25),
            groupNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            groupNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            groupNameLabel.heightAnchor.constraint(equalToConstant: 95)
            ])
        
        NSLayoutConstraint.activate([
            groupNameTextField.topAnchor.constraint(equalTo: groupNameLabel.topAnchor, constant: 70),
            groupNameTextField.leadingAnchor.constraint(equalTo: eventNameLabel.leadingAnchor, constant: 10),
            groupNameTextField.trailingAnchor.constraint(equalTo: eventNameLabel.trailingAnchor, constant: -10),
            groupNameTextField.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            datetimeLabel.topAnchor.constraint(equalTo: groupNameLabel.bottomAnchor, constant: 25),
            datetimeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            datetimeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            datetimeLabel.heightAnchor.constraint(equalToConstant: 95)
            ])
        
        NSLayoutConstraint.activate([
            month.topAnchor.constraint(equalTo: datetimeLabel.topAnchor, constant: 70),
            month.leadingAnchor.constraint(equalTo: datetimeLabel.leadingAnchor, constant: 10),
            month.widthAnchor.constraint(equalToConstant: 35),
            month.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            day.topAnchor.constraint(equalTo: month.topAnchor),
            day.leadingAnchor.constraint(equalTo: month.trailingAnchor, constant: 10),
            day.widthAnchor.constraint(equalToConstant: 30),
            day.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            year.topAnchor.constraint(equalTo: month.topAnchor),
            year.leadingAnchor.constraint(equalTo: day.trailingAnchor, constant: 10),
            year.widthAnchor.constraint(equalToConstant: 50),
            year.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            timestart.topAnchor.constraint(equalTo: month.topAnchor),
            timestart.leadingAnchor.constraint(equalTo: year.trailingAnchor, constant: 15),
            timestart.widthAnchor.constraint(equalToConstant: 90),
            timestart.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            timeend.topAnchor.constraint(equalTo: month.topAnchor),
            timeend.leadingAnchor.constraint(equalTo: timestart.trailingAnchor, constant: 10),
            timeend.widthAnchor.constraint(equalToConstant: 90),
            timeend.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: datetimeLabel.bottomAnchor, constant: 25),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 95)
            ])
        
        NSLayoutConstraint.activate([
            descriptionTextField.topAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: 70),
            descriptionTextField.leadingAnchor.constraint(equalTo: eventNameLabel.leadingAnchor, constant: 10),
            descriptionTextField.trailingAnchor.constraint(equalTo: eventNameLabel.trailingAnchor, constant: -10),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 25),
            locationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            locationLabel.heightAnchor.constraint(equalToConstant: 95)
            ])
        
        NSLayoutConstraint.activate([
            locationTextField.topAnchor.constraint(equalTo: locationLabel.topAnchor, constant: 70),
            locationTextField.leadingAnchor.constraint(equalTo: eventNameLabel.leadingAnchor, constant: 10),
            locationTextField.trailingAnchor.constraint(equalTo: eventNameLabel.trailingAnchor, constant: -10),
            locationTextField.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        NSLayoutConstraint.activate([
            createEventButton.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 25),
            createEventButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createEventButton.heightAnchor.constraint(equalToConstant: 50),
            createEventButton.widthAnchor.constraint(equalToConstant: 200)
            ])
    }
    
    @objc func addEvent()
    {
        var event : Event!
//        event = Event(name: eventNameTextField.text!, timestart: timestart.text!, timeend: timeend.text!, day: Int(day.text!)!, month: Int(month.text!)!, year: Int(year.text)!, eventLocation: locationTextField.text!, group: groupNameTextField.text, description: descriptionTextField.text!)
//
        
    }

}
