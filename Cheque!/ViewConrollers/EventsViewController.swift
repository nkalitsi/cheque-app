//
//  EventsViewController.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 11/26/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let reuseIdentifier = "eventCellReuse"
    let cellHeight: CGFloat = 120
    let tableViewPadding: CGFloat = 10
    let eventCellWhitespacePadding: CGFloat = 12
    
    
    var events: [Event]!
    var tableView: UITableView!
    var myEventsLabel: UILabel!



    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)

        title = "Events"
        //dummy event objects

        let event1 = Event(name: "WICC General Body Meeting #1", timestart: "1:30PM", timeend: "2:30PM", day: 10, month: 12, year: 2018, eventLocation: "Gates 01", description: "description1", id: 1, group: "WICC")
        let event2 = Event(name: "AppDev: iOS Workshop", timestart: "2:40PM", timeend:"3:40PM", day: 14, month:12 , year: 2018, eventLocation: "Philips 223", description: "description2", id: 2, group: "AppDev")
        let event3 = Event(name: "CS 1110: Study Group 1", timestart: "7:00PM", timeend: "8:00PM", day: 20, month: 12, year: 2018, eventLocation: "Olin Library 100", description: "description3", id: 3, group: "CS 1110")
        let event4 = Event(name: "Ice Cream Social", timestart: "7:00PM", timeend: "8:00PM", day: 14, month: 8, year: 2018, eventLocation: "Duffield Hall", description: "description4", id: 4, group: "WICC")
        let event5 = Event(name: "CUSD Design Workshop", timestart: "4:00PM", timeend: "5:00PM", day: 17, month: 8, year: 2018, eventLocation: "Kennedy eHub", description: "description5", id: 5, group: "CUSD")
        let event6 = Event(name: "Winter Origami Workshop", timestart: "5:00PM,", timeend: "6:00PM", day: 7, month: 11, year: 2018, eventLocation: "Goldwin Smith Hall 222", description: "description6", id: 6, group: "Origami Club")
        let event7 = Event(name: "Writing Workshop", timestart: "1:30PM", timeend: "2:30PM", day: 2, month: 12, year: 2018, eventLocation: "Tatkon Center 100", description: "description7", id: 7, group: "Knight Writing")
        
        events = [event1, event2, event3, event4, event5, event6, event7]

        
        //Change navBar color
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.95, green: 0.26, blue: 0.0745, alpha: 0)
        navigationController?.navigationBar.prefersLargeTitles = true
        


        //myEvents Label
        myEventsLabel = UILabel()
        myEventsLabel.text = "MY EVENTS"
        myEventsLabel.translatesAutoresizingMaskIntoConstraints = false

        myEventsLabel.font = UIFont.systemFont(ofSize: 26)
        myEventsLabel.textColor = UIColor.black
        myEventsLabel.textAlignment = .center
        view.addSubview(myEventsLabel)

        
        //initialize tableview
        tableView = UITableView(frame: .zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(EventTableViewCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.backgroundColor = .clear
        view.addSubview(tableView)
        
        setupConstraints()

    }
    
    //setup constraints for tableview
    func setupConstraints() {
        // Setup the constraints for our views
        
        NSLayoutConstraint.activate([

            myEventsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            myEventsLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            myEventsLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            myEventsLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myEventsLabel.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: tableViewPadding),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -tableViewPadding),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            ])

        

    
    }
    
    //Asks the data source for a cell to insert in a particular location of the table view.
    func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! EventTableViewCell
        let event = events[indexPath.row]
        cell.configure(event: event)
        cell.setNeedsUpdateConstraints()
        cell.selectionStyle = .none
        
        //Creates spacing inbetween event cells
        cell.layer.borderWidth = CGFloat(eventCellWhitespacePadding)
        cell.layer.borderColor = tableView.backgroundColor?.cgColor
        
        //round the corners
        cell.layer.cornerRadius = 9
        cell.layer.masksToBounds = true

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let event = events[indexPath.row]
        let eventController = SingleEventViewController()
        eventController.event = event
        navigationController?.pushViewController(eventController, animated: true)
    }
    
    //Tells the data source to return the number of rows in a given section of a table view.
    func tableView(_: UITableView, numberOfRowsInSection: Int) -> Int {
        return events.count
    }
    
    //Asks the delegate for the height to use for a row in a specified location.
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
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
