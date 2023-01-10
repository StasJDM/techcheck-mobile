//
//  Question.swift
//  TechCheck-Mobile
//
//  Created by user on 07.01.2023.
//

import Foundation

struct Question: Identifiable {
    let id: UUID
    let question: String
    let answer: String
    let themes: [Theme]
    let creatorId: UUID
    let createdAt: Date
    let updatedAt: Date
    
    init(id: UUID, question: String, answer: String, themes: [Theme], creatorId: UUID, createdAt: Date, updatedAt: Date) {
        self.id = id
        self.question = question
        self.answer = answer
        self.themes = themes
        self.creatorId = creatorId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }
}

extension Question {
    static let sampleData: [Question] =
    [
        Question(
            id: UUID(),
            question: "В чем разница между let, var и const",
            answer: "",
            themes: [],
            creatorId: UUID(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Question(
            id: UUID(),
            question: "Что такое call, bind и assing в JavaScript и в чем между ними разница",
            answer: "",
            themes: [],
            creatorId: UUID(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Question(
            id: UUID(),
            question: "Какие есть особенности у var?",
            answer: "",
            themes: [],
            creatorId: UUID(),
            createdAt: Date(),
            updatedAt: Date()
        )
    ]
}
