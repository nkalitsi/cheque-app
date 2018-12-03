//
//  Event.swift
//  Cheque!
//
//  Created by Natalie Sena Kalitsi on 11/26/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import Foundation
import Alamofire


class Event: Codable {

    var eventName: String
    var eventLocation: String
    var timestart: String
    var timeend: String
    var day: Int
    var month: Int
    var year: Int
    var description: String
    var id: Int
    var attendees: [User]
    //var group: String
    

    init(name: String, timestart: String, timeend: String, day: Int, month: Int, year: Int, eventLocation: String,description: String, id: Int, group: String) {
        self.eventName = name
        self.timestart = timestart
        self.timeend = timeend
        self.day = day
        self.month = month
        self.year = year
        self.eventLocation = eventLocation
        self.description = description
        self.id = id
        //self.attendees = attendees
        self.attendees = [User(fullName: "Johny Applessed", givenName: "johnappleseed", email: "johnnyappleseed@cornell.edu")]
    }
}
    class EventDataResponse: Codable {
        var events: [Event]
    }
    
    class EventResponse: Codable {
        var data: EventDataResponse
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
            
