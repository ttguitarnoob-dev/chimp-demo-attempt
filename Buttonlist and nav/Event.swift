//
//  Event.swift
//  Buttonlist and nav
//
//  Created by Travis Thompson on 3/13/25.
//

import Foundation


struct Event: Identifiable {
    let id: Int
    let title: String
    let date: String
    let time: String
    let teamMembers: [TeamMember]
    let schedule: [ScheduleItem]
}
