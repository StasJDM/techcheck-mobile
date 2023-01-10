//
//  TechCheckTemplateDetailView.swift
//  TechCheck-Mobile
//
//  Created by user on 07.01.2023.
//

import SwiftUI

struct TechCheckTemplateDetailView: View {
    @Binding var techCheckTemplate: TechCheckTemplate
    
    var body: some View {
        Text(techCheckTemplate.title)
    }
}

struct TechCheckTemplateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TechCheckTemplateDetailView(techCheckTemplate: .constant(TechCheckTemplate.sampleData[0]))
    }
}
