//
//  HelperFunctions.swift
//  Buttonlist and nav
//
//  Created by Travis Thompson on 3/14/25.
//

import Foundation

func formatDate(date: String) -> String {
    let inputFormatter = DateFormatter()
    inputFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    inputFormatter.timeZone = TimeZone(abbreviation: "UTC") // Use UTC if it's a UTC time

    let inputDate = inputFormatter.date(from: date)!
        // Step 2: Create a DateFormatter to format the Date object
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "EEEE, MMMM d, yyyy"
        
        let formattedDate = outputFormatter.string(from: inputDate)
        return formattedDate
    

}

func formatTime(inputTime: String) -> String? {
    // Step 1: Create a DateFormatter to parse the 24-hour time string (e.g., "13:00")
    let inputFormatter = DateFormatter()
    inputFormatter.dateFormat = "HH:mm"  // 24-hour format (e.g., "13:00")
    
    if let date = inputFormatter.date(from: inputTime) {
        // Step 2: Create a DateFormatter to convert the Date object to 12-hour format with AM/PM
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "h:mm a" // 12-hour format with AM/PM
        
        return outputFormatter.string(from: date)
    }
    return nil
}
