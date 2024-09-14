//
//  SamplePrompt.swift
//  Enchanted
//
//  Created by Augustinas Malinauskas on 11/02/2024.
//

import Foundation

struct SamplePrompts: Identifiable, Hashable {
    enum SamplePromptType {
        case question
        case action
        
        var icon: String {
            switch self {
            case .question:
                return "questionmark.circle"
            case .action:
                return "lightbulb.circle"
            }
        }
    }
    
    var prompt: String
    var type: SamplePromptType
    
    var id: String {
        prompt
    }
}

// MARK: - Sample Data
extension SamplePrompts {
    static let samples: [SamplePrompts] = [
        .init(prompt: "Write a login page using SwiftUI.", type: .action),
        .init(prompt: "What's the EF English Live", type: .question),
        .init(prompt: "What's the EF Corporate Learning", type: .question),
        .init(prompt: "Write a text message asking a friend to be my plus-one at a wedding", type: .action),    ]
    
    static var shuffled: [SamplePrompts] {
        return samples.shuffled()
    }
}
