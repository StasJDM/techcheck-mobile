//
//  Theme.swift
//  TechCheck-Mobile
//
//  Created by user on 07.01.2023.
//

import Foundation

struct Theme: Identifiable {
    let id: UUID
    let title: String
    let description: String?
    let creatorId: String
    let questions: [Question]
    let createdAt: Date
    let updatedAt: Date
}
