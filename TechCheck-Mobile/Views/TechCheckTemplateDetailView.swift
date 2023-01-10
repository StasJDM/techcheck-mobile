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
        List {
            Section(header: Text("Информация")) {
                NavigationLink(destination: TechCheckView()) {
                    Label("Начать техчек", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                Label(techCheckTemplate.title, systemImage: "info")
                HStack {
                    Label("Количество вопросов", systemImage: "timer")
                    Spacer()
                    Text(String(techCheckTemplate.questions.count))
                }
            }
            Section(header: Text("Вопросы")) {
                if techCheckTemplate.questions.count == 0 {
                    Text("В шаблоне техчека еще нет вопросов")
                }
                ForEach(techCheckTemplate.questions) { question in
                    Text(question.question)
                }
            }
        }
        .navigationTitle("Шаблон техчека")
    }
}

struct TechCheckTemplateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TechCheckTemplateDetailView(techCheckTemplate: .constant(TechCheckTemplate.sampleData[0]))
        }
    }
}
