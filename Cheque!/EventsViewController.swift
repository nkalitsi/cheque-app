//
//  EventsViewController.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 11/26/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class EventsViewController: UINavigationController, UITableViewDelegate, UITableViewDataSource {
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

        //dummy event objects

        let mathClass = Event(name: "Math 1910", eventLocation: "201 Malott", day: 8, month: 12, year: 2018)
        let climbingClub = Event(name: "Climibing Sesh", eventLocation: "Helen Newman", day: 10, month: 12, year: 2018)
        let appDev = Event(name: "Intro to iOS", eventLocation: "Gates G01", day: 14, month: 12, year: 2018)
        let cisFormal = Event(name: "CIS Starry Night Formal", eventLocation: "Johnson Museum", day: 15, month: 12, year: 2018)
        
        
        events = [mathClass, climbingClub, appDev, cisFormal]

        
        //Change navBar color
        self.navigationBar.barTintColor = UIColor(red: 0.95, green: 0.26, blue: 0.0745, alpha: 0)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        


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
