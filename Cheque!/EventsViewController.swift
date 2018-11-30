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
    let cellHeight: CGFloat = 100
    let tableViewPadding: CGFloat = 10
    let eventCellWhitespacePadding: CGFloat = 1
    
    
    var events: [Event]!
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
      
        //dummy event objects
        let mathClass = Event(name: "Math 1910", eventLocation: "201 Malott", day: 8, month: 11, year: 2018)
        let climbingClub = Event(name: "Climibing Sesh", eventLocation: "Helen Newman", day: 10, month: 12, year: 2018)
        
        events = [mathClass, climbingClub]
        
        //Change navBar color
        self.navigationBar.barTintColor = UIColor(red: 0.95, green: 0.26, blue: 0.0745, alpha: 0)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        
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
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: tableViewPadding),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -tableViewPadding),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
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
