//
//  TechCheckTemplatesView.swift
//  TechCheck-Mobile
//
//  Created by user on 05.01.2023.
//

import SwiftUI

struct TechCheckTemplatesView: View {
    @State private var isPresentingNewScrumView = false
    @Binding var techCheckTemplates: [TechCheckTemplate]
    
    var body: some View {
        List {
            ForEach($techCheckTemplates) { $template in
                NavigationLink(destination: TechCheckTemplateDetailView(techCheckTemplate: $template)) {
                    Text(template.title)
                }
            }
        }
        .navigationTitle("Шаблоны техчеков")
    }
}

struct TechCheckTemplatesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TechCheckTemplatesView(techCheckTemplates: .constant(TechCheckTemplate.sampleData))
        }
    }
}
