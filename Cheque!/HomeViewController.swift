//
//  HomeViewController.swift
//
//
//  Created by Riya Jaggi on 11/29/18.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var eventArray: [Event]!
    var nextEvent: [Event]!
    var upcomingEvents: [Event]!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    var homeHeaderLabel: UILabel!
    
    var eventCollectionView: UICollectionView!
    var eventsInGroupHeader: UILabel!
    
    var upcomingEventsCollectionView: UICollectionView!
    var upcomingEventsHeader: UILabel!
    
    var nextEventHeader: UILabel!
    var nextEventCollection: UICollectionView!
    
    let eventCellReuseIdentifier = "eventCellReuseIdentifier"
    let upcomingCellResueIdentifier = "upcomingCellResueIdentifier"
    let nextEventCollectionReuseIdentifier = "nextEventReuseIdentifier"
    let padding: CGFloat = 20
    
  
    

    
    //sample events
    let event1 = Event(name: "WICC General Body Meeting #1", timestart: "1:30PM", timeend: "2:30PM", day: 10, month: 12, year: 2018, eventLocation: "Gates 01", group: "WICC", description: "description1")
    let event2 = Event(name: "AppDev: iOS Workshop", timestart: "2:40PM", timeend:"3:40PM", day: 14, month:12 , year: 2018, eventLocation: "Philips 223", group: "AppDev", description: "description2")
    let event3 = Event(name: "CS 1110: Study Group 1", timestart: "7:00PM", timeend: "8:00PM", day: 20, month: 12, year: 2018, eventLocation: "Olin Library 100", group: "CS 1110", description: "description3")
    

    
    //sampleupcomingevents
    let upcoming1 = Event(name: "Ice Cream Social", timestart: "7:00PM", timeend: "8:00PM", day: 14, month: 8, year: 2018, eventLocation: "Duffield Hall", group: "WICC", description: "description4")
    let upcoming2 = Event(name: "CUSD Design Workshop", timestart: "4:00PM", timeend: "5:00PM", day: 17, month: 8, year: 2018, eventLocation: "Kennedy eHub", group: "CUSD", description: "description5")
    let upcoming3 = Event(name: "Winter Origami Workshop", timestart: "5:00PM,", timeend: "6:00PM", day: 7, month: 11, year: 2018, eventLocation: "Goldwin Smith Hall 222", group: "Origami Club", description: "description6")
    let upcoming4 = Event(name: "Writing Workshop", timestart: "1:30PM", timeend: "2:30PM", day: 2, month: 12, year: 2018, eventLocation: "Tatkon Center 100", group: "Knight Writing", description: "description7")
    


    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Home!"
        view.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        eventArray = [event1, event2, event3]
        nextEvent = [upcoming1]
        upcomingEvents = [upcoming2, upcoming3, upcoming4]
        

        homeHeaderLabel = UILabel()
        homeHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        homeHeaderLabel.text = "Hello, Ellie!"
        homeHeaderLabel.textAlignment = .center
        homeHeaderLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        homeHeaderLabel.textColor = UIColor.black
        view.addSubview(homeHeaderLabel)
        
        nextEventHeader = UILabel()
        nextEventHeader.translatesAutoresizingMaskIntoConstraints = false
        nextEventHeader.text = "YOUR NEXT EVENT"
        nextEventHeader.textAlignment = .center
        nextEventHeader.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nextEventHeader.textColor = UIColor.black
        view.addSubview(nextEventHeader)
        
        let layout2 = UICollectionViewFlowLayout()
        layout2.scrollDirection = .vertical
        layout2.minimumInteritemSpacing = padding
        layout2.minimumLineSpacing = padding
        
        nextEventCollection = UICollectionView(frame: .zero, collectionViewLayout: layout2)
        nextEventCollection.translatesAutoresizingMaskIntoConstraints = false
        nextEventCollection.dataSource = self
        nextEventCollection.delegate = self
        nextEventCollection.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        nextEventCollection.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        nextEventCollection.register(EventsInYourGroupCell.self, forCellWithReuseIdentifier: nextEventCollectionReuseIdentifier)
        view.addSubview(nextEventCollection)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = padding
        layout.minimumLineSpacing = padding
        
        
        eventCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        eventCollectionView.translatesAutoresizingMaskIntoConstraints = false
        eventCollectionView.dataSource = self
        eventCollectionView.delegate = self
        eventCollectionView.backgroundColor = UIColor.init(displayP3Red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        eventCollectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        eventCollectionView.register(EventsInYourGroupCell.self, forCellWithReuseIdentifier: eventCellReuseIdentifier)
        view.addSubview(eventCollectionView)
        
        
        eventsInGroupHeader = UILabel()
        eventsInGroupHeader.translatesAutoresizingMaskIntoConstraints = false
        eventsInGroupHeader.text = "EVENTS IN YOUR GROUPS"
        eventsInGroupHeader.textAlignment = .center
        eventsInGroupHeader.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        eventsInGroupHeader.textColor = UIColor.black
        view.addSubview(eventsInGroupHeader)
        
        upcomingEventsHeader = UILabel()
        upcomingEventsHeader.translatesAutoresizingMaskIntoConstraints = false
        upcomingEventsHeader.text = "YOUR UPCOMING EVENTS"
        upcomingEventsHeader.textAlignment = .center
        upcomingEventsHeader.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        upcomingEventsHeader.textColor = UIColor.black
        view.addSubview(upcomingEventsHeader)
        
        let upcomingLayout = UICollectionViewFlowLayout()
        upcomingLayout.scrollDirection = .vertical
        upcomingLayout.minimumLineSpacing = padding
        upcomingLayout.minimumInteritemSpacing = padding
        
        upcomingEventsCollectionView = UICollectionView(frame: .zero, collectionViewLayout: upcomingLayout)
        upcomingEventsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        upcomingEventsCollectionView.dataSource = self
        upcomingEventsCollectionView.delegate = self
        upcomingEventsCollectionView.backgroundColor = UIColor.white
        upcomingEventsCollectionView.layer.cornerRadius = 10
        //        upcomingEventsCollectionView.layer.borderColor = UIColor.black.cgColor
        //        upcomingEventsCollectionView.layer.borderWidth = 1
        upcomingEventsCollectionView.register(UpcomingEventsCell.self, forCellWithReuseIdentifier: upcomingCellResueIdentifier)
        view.addSubview(upcomingEventsCollectionView)
        
        setupConstraints()
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            homeHeaderLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            homeHeaderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeHeaderLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            homeHeaderLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            homeHeaderLabel.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        NSLayoutConstraint.activate([
            nextEventHeader.topAnchor.constraint(equalTo: homeHeaderLabel.bottomAnchor, constant: 30),
            nextEventHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextEventHeader.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        NSLayoutConstraint.activate([
            nextEventCollection.topAnchor.constraint(equalTo: nextEventHeader.bottomAnchor, constant: 5),
            nextEventCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            nextEventCollection.heightAnchor.constraint(equalToConstant: 125),
            nextEventCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        
        NSLayoutConstraint.activate([
            upcomingEventsHeader.topAnchor.constraint(equalTo: nextEventCollection.bottomAnchor, constant: 25),
            upcomingEventsHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            upcomingEventsHeader.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        NSLayoutConstraint.activate([
            upcomingEventsCollectionView.topAnchor.constraint(equalTo: upcomingEventsHeader.bottomAnchor, constant: 5),
            upcomingEventsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            upcomingEventsCollectionView.heightAnchor.constraint(equalToConstant: 150),
            upcomingEventsCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
            ])
        
        NSLayoutConstraint.activate([
            eventsInGroupHeader.topAnchor.constraint(equalTo: upcomingEventsCollectionView.bottomAnchor, constant: 25),
            eventsInGroupHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            eventsInGroupHeader.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        NSLayoutConstraint.activate([
            eventCollectionView.topAnchor.constraint(equalTo: eventsInGroupHeader.bottomAnchor, constant: 5),
            eventCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            eventCollectionView.heightAnchor.constraint(equalToConstant: 275),
            eventCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == eventCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: eventCellReuseIdentifier, for: indexPath) as! EventsInYourGroupCell
            let event = eventArray[indexPath.item]
            cell.configure(for: event)
            cell.layer.cornerRadius = 10
            //            cell.layer.borderColor = UIColor.black.cgColor
            //            cell.layer.borderWidth = 1
            cell.layer.masksToBounds = true
            cell.setNeedsUpdateConstraints()
            return cell
        }
            
        else if collectionView == nextEventCollection {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: nextEventCollectionReuseIdentifier, for: indexPath) as! EventsInYourGroupCell
            let event = nextEvent[indexPath.item]
            cell.configure(for: event)
            cell.layer.cornerRadius = 10
            cell.layer.masksToBounds = true
            cell.layer.borderColor = UIColor.clear.cgColor
            cell.layer.borderWidth = 1
            //            cell.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
            //            cell.layer.shadowOpacity = 0.1
            //            cell.layer.shadowRadius = 7
            //            cell.layer.shadowColor = UIColor.gray.cgColor
            //            cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
            //            cell.layer.masksToBounds = false
            cell.setNeedsUpdateConstraints()
            return cell
        }
            
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: upcomingCellResueIdentifier, for: indexPath) as! UpcomingEventsCell
            let upcomingEvent = upcomingEvents[indexPath.item]
            cell.configure(for: upcomingEvent)
            cell.layer.masksToBounds = true
            cell.setNeedsUpdateConstraints()
            return cell
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == eventCollectionView {
            return eventArray.count
        }
            
        else if collectionView == nextEventCollection {
            return nextEvent.count
        }
            
        else {
            return upcomingEvents.count
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let length = (collectionView.frame.width - padding * 2)
        
        if collectionView == eventCollectionView {
            return CGSize(width: length, height: 125)
        }
        else if  collectionView == nextEventCollection {
            return CGSize(width: length, height: 125)
        }
        else {
            return CGSize(width: length, height: 25)
        }
    }
    
}
