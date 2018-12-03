//
//  ViewController.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 11/24/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tabController: UITabBarController!
    var homeViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTabBar()
    }
    
    func createTabBar() {
        
        let appearance = UITabBarItem.appearance()
        let attributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 20)]
        appearance.setTitleTextAttributes(attributes, for: [])
    
        tabController = UITabBarController()
        homeViewController = UINavigationController(rootViewController: HomeViewController())
        homeViewController.title = "Home"
        
//        homeViewController.view.backgroundColor = .black
        
        let eventsViewController = UINavigationController(rootViewController: EventsViewController())
        eventsViewController.title = "Events"
        
        let createModalViewController =  UINavigationController(rootViewController: CreateViewController())
        createModalViewController.title = "Create"
        
        tabController.viewControllers = [homeViewController, eventsViewController, createModalViewController]
        self.view.addSubview(tabController.view)
 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

