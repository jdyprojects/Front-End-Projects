//
//  ContentView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 11/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            
            NavigationStack {
                HomeView()
            }
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            NavigationStack {
                SearchView()
            }
                .tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }
            NavigationStack{
                PickOrderView()
                }
                .tabItem{
                    Label("Pick Orders", systemImage: "plus.app.fill")
                }
            NavigationStack{
                ScanView()
            }
                .tabItem{
                    Label("Scan Putaway", systemImage: "barcode.viewfinder")
                }
            NavigationStack{
                MoreView()
            }
                   .tabItem{
                       Label("More", systemImage: "ellipsis")
                }
        }
    }
}

#Preview {
    ContentView()
}
