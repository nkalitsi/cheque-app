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
    var time: String
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
        time = "1:30"
        groupName = "FIX EVENTS CLASS"
        tags = ["FIX TAGS"]
    }
    
    init(name: String, time: String,eventLocation: String, group: String, tags: [String]) {
        self.eventName = name
        self.time = time
        day = 1
        month = 1
        year = 2018
        self.eventLocation = eventLocation
        self.groupName = group
        self.tags = tags
    }
//    var eventName: String
//    var eventLocation: String
//    var time: String
//    var day: Int
//    var month: Int
//    var year: Int
//    var groupName: String
//    var tags: [String]
    
//    format of a response when u ask for event info (ignore the values) = {
//                    'id': self.id,
//                    'title': self.title,
//                    'date': self.date,
//                    'time': self.time,
//                    'attendees': self.attendees,
//                    'info': {
//                        'group': self.info['group'],
//                        'host': self.info['host']
//                    }
//                    'location': {
//                        'name': self.location['name'],
//                        'address': self.location['address']
//                    }
//            }

//    init(id: Int, title: String, day: Int, month: Int, year: Int, time: String, attendees: [User])
}
