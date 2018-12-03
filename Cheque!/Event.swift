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
    var timestart: String
    var timeend: String
    var day: Int
    var month: Int
    var year: Int
    var groupName: String
    var description: String
    
    init(name: String, eventLocation: String, day: Int, month: Int, year: Int) {
        self.eventName = name
        self.eventLocation = eventLocation
        self.day = day
        self.month = month
        self.year = year
        timestart = "1:30pm"
        timeend = "2:30pm"
        groupName = "FIX EVENTS CLASS"
        description = "DESCRIPTION"
    }
    

    init(name: String, timestart: String, timeend: String, day: Int, month: Int, year: Int, eventLocation: String, group: String, description: String) {
        self.eventName = name
        self.timestart = timestart
        self.timeend = timeend
        self.day = day
        self.month = month
        self.year = year
        self.eventLocation = eventLocation
        self.groupName = group
        self.description = description
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

