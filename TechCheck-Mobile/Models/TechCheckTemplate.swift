//
//  TechCheckTemplate.swift
//  TechCheck-Mobile
//
//  Created by user on 07.01.2023.
//

import Foundation

struct TechCheckTemplate: Identifiable {
    let id: UUID
    let title: String
    let description: String
    let ownerId: UUID
    let questions: [Question]
    let createdAt: Date
    let updatedAt: Date
    
    init(id: UUID, title: String, description: String, ownerId: UUID, questions: [Question], createdAt: Date, updatedAt: Date) {
        self.id = id
        self.title = title
        self.description = description
        self.ownerId = ownerId
        self.questions = questions
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}

extension TechCheckTemplate {
    static let sampleData: [TechCheckTemplate] =
    [
        TechCheckTemplate(
            id: UUID(),
            title: "Node.js техчек (джун)",
            description: "Техчек для Node.js бэкенд-разработчика",
            ownerId: UUID(),
            questions: Question.sampleData,
            createdAt: Date(),
            updatedAt: Date()
        ),
        TechCheckTemplate(
            id: UUID(),
            title: "Swift техчек (джун)",
            description: "", ownerId: UUID(),
            questions: Question.sampleData,
            createdAt: Date(),
            updatedAt: Date()
        ),
        TechCheckTemplate(
            id: UUID(),
            title: "Node.js техчек (мидл)",
            description: "",
            ownerId: UUID(),
            questions: [],
            createdAt: Date(),
            updatedAt: Date()
        )
    ]
}
