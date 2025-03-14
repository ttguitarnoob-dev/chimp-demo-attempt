//
//  DashboardView.swift
//  Buttonlist and nav
//
//  Created by Travis Thompson on 3/13/25.
//

import Foundation
import SwiftUI

let events: [Event] = [
    Event(
        id: 3,
        title: "Art Expo 2025",
        date: "2025-10-17T00:00:00.000Z",
        time: "10:00",
        teamMembers: [
            TeamMember(name: "Sophia Green", role: "Curator"),
            TeamMember(name: "James Clark", role: "Artist Coordinator"),
            TeamMember(name: "Olivia Martinez", role: "Logistics Manager")
        ],
        schedule: [
            ScheduleItem(time: "10:30", description: "Opening Ceremony"),
            ScheduleItem(time: "11:00", description: "Art Exhibition Tour"),
            ScheduleItem(time: "13:00", description: "Live Painting Session"),
            ScheduleItem(time: "15:00", description: "Artist Q&A Panel")
        ]
    ),
    Event(
        id: 4,
        title: "Food Truck Festival",
        date: "2025-09-17T00:00:00.000Z",
        time: "12:00",
        teamMembers: [
            TeamMember(name: "Mia Thompson", role: "Vendor Coordinator"),
            TeamMember(name: "Liam Johnson", role: "Event Host")
        ],
        schedule: [
            ScheduleItem(time: "12:30", description: "Opening Announcements"),
            ScheduleItem(time: "13:00", description: "Food Truck Showcase"),
            ScheduleItem(time: "15:00", description: "Live Cooking Demo"),
            ScheduleItem(time: "17:00", description: "Awards & Closing")
        ]
    ),
    Event(
        id: 5,
        title: "Film Screening: Indie Gems",
        date: "2025-06-17T00:00:00.000Z",
        time: "23:00",
        teamMembers: [
            TeamMember(name: "Ethan Walker", role: "Director"),
            TeamMember(name: "Ava Patel", role: "Film Critic"),
            TeamMember(name: "Noah Brooks", role: "Producer")
        ],
        schedule: [
            ScheduleItem(time: "19:30", description: "Opening Remarks"),
            ScheduleItem(time: "20:00", description: "Feature Film Screening"),
            ScheduleItem(time: "21:30", description: "Q&A with Filmmakers")
        ]
    ),
    Event(
        id: 6,
        title: "Fitness Bootcamp",
        date: "2025-03-19T00:00:00.000Z",
        time: "07:00",
        teamMembers: [
            TeamMember(name: "Emily Davis", role: "Lead Trainer"),
            TeamMember(name: "Ryan Harris", role: "Yoga Instructor"),
            TeamMember(name: "Chloe Adams", role: "Nutrition Expert")
        ],
        schedule: [
            ScheduleItem(time: "07:30", description: "Warm-Up Session"),
            ScheduleItem(time: "08:00", description: "Strength Training"),
            ScheduleItem(time: "09:00", description: "Yoga & Meditation"),
            ScheduleItem(time: "10:00", description: "Healthy Eating Workshop")
        ]
    ),
    Event(
        id: 7,
        title: "Gaming Tournament 2025",
        date: "2025-03-18T00:00:00.000Z",
        time: "14:00",
        teamMembers: [
            TeamMember(name: "Daniel Cruz", role: "Tournament Host"),
            TeamMember(name: "Isabella Moore", role: "Referee"),
            TeamMember(name: "Mason Lee", role: "Technical Support")
        ],
        schedule: [
            ScheduleItem(time: "14:30", description: "Opening Round"),
            ScheduleItem(time: "16:00", description: "Semifinals"),
            ScheduleItem(time: "18:00", description: "Final Showdown"),
            ScheduleItem(time: "19:30", description: "Award Ceremony")
        ]
    )
]



struct DashboardView: View {
    var body: some View {
        NavigationStack {
            ScrollView  {
                VStack(spacing: 12) {
                    ForEach(events) { event in
                        NavigationLink( destination: EventDetailView(event: event)  ) {
                            Text(event.title)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                .padding(.bottom, 10)
                                .font(.headline)
                            
                        }
                        .padding(.horizontal, 20)
                    }
                    .navigationTitle(Text("My Events"))
                }
                
            }
            
        }
//        ScrollView {
//            VStack(alignment: .leading, spacing: 12) {
//                NavigationStack {
//                    ForEach(events) { event in
//                        NavigationLink(event.title, destination: EventDetailView(event: event)  )
//                    }
//                    .navigationTitle(Text("Events"))    
//                }
//            }
//        }
    }
}
