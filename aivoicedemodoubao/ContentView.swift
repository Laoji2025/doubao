//
//  ContentView.swift
//  aivoicedemodoubao
//
//  Created by Laoji Zhang on 2025/2/7.
//

import SwiftUI

struct ContentView: View {
    @State private var isWindowExpanded = false
    @State private var showFloatingWindow = true
    @State private var sharedMessage = "Initial Message"
    @State private var serverData: String = ""
    
    var body: some View {
        VStack {
            Text(sharedMessage)
                .padding()
            
            Button("Toggle Floating Window") {
                showFloatingWindow.toggle()
            }
            .padding()
            
            Button("Send Message to Floating Window") {
                sharedMessage = "Message from Main View"
            }
            .padding()
            
            Button("Fetch Data from Server") {
                NetworkService.fetchData { result in
                    switch result {
                    case .success(let data):
                        self.serverData = data
                        self.sharedMessage = data
                    case .failure(let error):
                        print("Error fetching data: \(error)")
                    }
                }
            }
            .padding()
            
            Text(serverData)
                .padding()
        }
        .overlay(
            FloatingWindowView(isExpanded: $isWindowExpanded, showWindow: $showFloatingWindow, message: $sharedMessage)
        )
    }
}

#Preview {
    ContentView()
}
