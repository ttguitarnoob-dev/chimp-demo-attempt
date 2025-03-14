//
//  EventDetailView.swift
//  Buttonlist and nav
//
//  Created by Travis Thompson on 3/13/25.
//

import Foundation
import SwiftUI

struct EventDetailView: View {
    let event: Event
    
    var body: some View {
        
        VStack(spacing: 20) {

            Text(event.title)
                .font(.largeTitle)
                .fontWeight(.bold)  
             
            
            Text(formatDate(date: event.date))
                .font(.title2)
                
            
            Text(formatTime(inputTime: event.time)!)
                .foregroundColor(.gray)
                
            
            Spacer()
        }
    }
}
