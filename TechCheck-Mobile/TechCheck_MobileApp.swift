//
//  TechCheck_MobileApp.swift
//  TechCheck-Mobile
//
//  Created by user on 05.01.2023.
//

import SwiftUI

@main
struct TechCheck_MobileApp: App {
    @State var techCheckTemplates: [TechCheckTemplate] = TechCheckTemplate.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TechCheckTemplatesView(techCheckTemplates: $techCheckTemplates)
            }
        }
    }
}
