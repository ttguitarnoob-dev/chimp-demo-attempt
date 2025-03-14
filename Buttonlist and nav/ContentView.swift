//
//  ContentView.swift
//  Buttonlist and nav
//
//  Created by Travis Thompson on 3/13/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            DashboardView()
                .tabItem {
                    Text("🏚️")
                    Text("Dashboard")
                }
                .tag(1)
            ProfileView()
                .tabItem {
                    Text("👤")
                    Text("Profile")
                }
                .tag(2)
            SettingsView()
                .tabItem {
                    Text("⚙️")
                    Text("Settings")
                }
                .tag(3)
        }
//            TabView(selection: $selectedTab) {
//                DashboardView()
//                    .tabItem {
//                        Text("🏚️")
//                        Text("Dashboard")
//                    }
//                    .tag(1)
//                SearchView()
//                    .tabItem {
//                        Text("🔎")
//                        Text("Search")
//                    }
//                    .tag(2)
//                ProfileView()
//                    .tabItem {
//                        Text("👤")
//                        Text("Profile")
//                    }
//                    .tag(3)
//                SettingsView()
//                    .tabItem {
//                        Text("⚙️")
//                        Text("Settings")
//                    }
//                    .tag(4)
//                HomeView()
//                    .tabItem {
//                        Text("🏠")
//                        Text("Home")
//                    }
//                    .tag(5)
//                
//            }
//            .background(Color.gray)
//            .animation(.easeOut(duration: 0.3), value: selectedTab)
        }
        
        
    }
    


#Preview {
    ContentView()
}
