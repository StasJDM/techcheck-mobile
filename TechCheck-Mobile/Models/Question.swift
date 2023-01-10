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
    let answer: String?
    let themes: [Theme]
    let creatorId: UUID
    let createdAt: Date
    let updatedAt: Date
}
