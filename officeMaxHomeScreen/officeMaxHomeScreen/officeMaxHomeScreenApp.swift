//
//  officeMaxHomeScreenApp.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 10/24/24.
//

import SwiftUI

@main
struct officeMaxHomeScreenApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .navigationBarBackButtonHidden(true)
        }
    }
}
