//
//  AppAlertExampleApp.swift
//  AppAlertExample
//
//  Created by Marcin Jędrzejak on 20/04/2024.
//

import SwiftUI

@main
struct AppAlertExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    print(AlertService.appVersion)
                    print(AlertService.osVersion)
                }
        }
    }
}
