//
//  Event.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 11/26/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import Foundation


class Event {

    var eventName: String
    var eventLocation: String
    var day: Int
    var month: Int
    var year: Int
    var groupName: String
    var tags: [String]
    
    init(name: String, eventLocation: String, day: Int, month: Int, year: Int) {
        self.eventName = name
        self.eventLocation = eventLocation
        self.day = day
        self.month = month
        self.year = year
        groupName = "FIX EVENTS CLASS"
        tags = ["FIX TAGS"]
        
    }
    
    init(name: String, eventLocation: String, group: String, tags: [String]) {
        self.eventName = name
        self.eventLocation = eventLocation
        day = 1
        month = 1
        year = 2018
        self.groupName = group
        self.tags = tags
        
    }

}
