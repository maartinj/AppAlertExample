//
//  ContentView.swift
//  AppAlertExample
//
//  Created by Marcin Jędrzejak on 20/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var alertService = AlertService("https://maartinj.github.io/AppAlert/messages.json")
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .alert(alertService.message.title, isPresented: $alertService.showMessage) {
                    Button(alertService.message.confirmLabel) {}
                } message: {
                    Text(alertService.message.text)
                }
        }
        .padding()
        .task {
            await alertService.showAlertIfNecessary()
        }
    }
}

#Preview {
    ContentView()
}
