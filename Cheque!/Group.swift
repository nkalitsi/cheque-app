//
//  Group.swift
//  Cheque!
//
//  Created by Riya Jaggi on 12/2/18.
//  Copyright © 2018 Natalie Kalitsi. All rights reserved.
//

import Foundation

class Group {
    var groupName: String!
    var admin: String!
    var description: String!
    var website: String!
    var events: [Event]!
    
    init(groupname: String, admin: String, description: String, website: String, events: [Event])
    {
        self.groupName = groupname
        self.admin = admin
        self.description = description
        self.website = website
        self.events = events
    }
    
}
