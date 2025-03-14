//
//  ScheduleModel.swift
//  Buttonlist and nav
//
//  Created by Travis Thompson on 3/14/25.
//

import Foundation
struct ScheduleItem: Identifiable {
    let id = UUID()
    let time: String
    let description: String
}
