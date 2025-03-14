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
                .font(.title)
                .fontWeight(.bold)
             
            
            Text(formatDate(date: event.date))
                .font(.title2)
                
            
            Text(formatTime(inputTime: event.time)!)
                .foregroundColor(.gray)
                
            
            
                Spacer()
            if event.teamMembers.count > 0 {
                NavigationLink(destination: TeamMembersWidget(teamMembers: event.teamMembers)) {
                    Text("Team Members")
                        .padding()
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .navigationTitle("Event Details")
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        Text("Edit")
                    }
                }
            }
        }
        
        .onAppear {
            print("Event: \(event.teamMembers[0])")
        }
    }
}
