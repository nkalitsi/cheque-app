//
//  HomeViewController.swift
//  
//
//  Created by Natalie Sena Kalitsi on 11/29/18.
//

import UIKit

class HomeViewController: UINavigationController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */
    
    var eventCollectionView: UICollectionView!
    var homeHeaderLabel: UILabel!
    var eventArray: [Event]!
    
    let eventCellReuseIdentifier = "eventCellReuseIdentifier"
    let headerReuseIdentifier = "headerReuseIdentifier"
    let padding: CGFloat = 20
    let headerHeight: CGFloat = 30
    
    
    //cusstomizing navbar
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        let height: CGFloat = 300 //whatever height you want to add to the existing height
//        let bounds = self.navigationController!.navigationBar.bounds
//        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds.width, height: bounds.height + height)

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Home!"
        view.backgroundColor = UIColor.white
        
        //Change navBar color
        self.navigationBar.barTintColor = UIColor(red: 0.95, green: 0.26, blue: 0.0745, alpha: 0)
        self.navigationController?.navigationBar.prefersLargeTitles = true


        
        let event1 = Event(name: "WICC General Body Meeting #1", eventLocation: "Gates G01", group: "WICC", tags: ["gb", "wicc"])
        let event2 = Event(name: "AppDev: iOS Workshop", eventLocation: "Philips 223", group: "AppDev", tags: ["appdev", "ios", "workshop", "engineering", "coding", "app", "swift"])
        let event3 = Event(name: "CS 1110: Study Group 1", eventLocation: "Olin Library 100", group: "CS 1110", tags: ["studygroup", "cs", "cs1110", "python"])
        
        eventArray = [event1, event2, event3]
        //events sort
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = padding
        layout.minimumLineSpacing = padding
        
        
        eventCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        eventCollectionView.translatesAutoresizingMaskIntoConstraints = false
        eventCollectionView.dataSource = self
        eventCollectionView.delegate = self
        eventCollectionView.backgroundColor = UIColor.white
        eventCollectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 10)
        eventCollectionView.register(UpcomingEventsCollectionViewCell.self, forCellWithReuseIdentifier: eventCellReuseIdentifier)
        eventCollectionView.register(UpcomingEventsHeader.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerReuseIdentifier)
        view.addSubview(eventCollectionView)
        
        homeHeaderLabel = UILabel()
        homeHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        homeHeaderLabel.text = "Welcome!"
        homeHeaderLabel.textAlignment = .center
        homeHeaderLabel.backgroundColor = UIColor.white
        homeHeaderLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        homeHeaderLabel.textColor = UIColor.black
        view.addSubview(homeHeaderLabel)
        
        setupConstraints()
        
    }
    
    func setupConstraints() {
        
        
        NSLayoutConstraint.activate([
            homeHeaderLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            homeHeaderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homeHeaderLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            homeHeaderLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            homeHeaderLabel.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        NSLayoutConstraint.activate([
            eventCollectionView.topAnchor.constraint(equalTo: homeHeaderLabel.bottomAnchor, constant: 10),
            eventCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            eventCollectionView.heightAnchor.constraint(equalToConstant: 250),
            eventCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: eventCellReuseIdentifier, for: indexPath) as! UpcomingEventsCollectionViewCell
        let event = eventArray[indexPath.item]
        cell.configure(for: event)
        print("cell")
<<<<<<< HEAD
=======
        cell.layer.cornerRadius = 9
        cell.layer.masksToBounds = true
>>>>>>> 6450a862f455deb5882a80d9c7086355eedfb765
        cell.setNeedsUpdateConstraints()
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(eventArray.count)
        return eventArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let length = (collectionView.frame.width - padding * 2)
        return CGSize(width: length, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
            
        case UICollectionElementKindSectionHeader:
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerReuseIdentifier, for: indexPath)
            headerView.setNeedsUpdateConstraints()
            return headerView
            
        default:
            return UICollectionReusableView()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: headerHeight)
    }

}
