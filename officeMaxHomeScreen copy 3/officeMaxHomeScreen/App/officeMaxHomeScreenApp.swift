//
//  officeMaxHomeScreenApp.swift
//  officeMaxHomeScreen
//
//  Created by Jaquawn Yarborough on 10/24/24.
//

import SwiftUI

@main
struct officeMaxHomeScreenApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView()
                .navigationBarBackButtonHidden(true)
        }
    }
}
