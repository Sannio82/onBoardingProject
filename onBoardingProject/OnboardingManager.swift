//
//  OnboardingManager.swift
//  onBoardingProject
//
//  Created by Sanna Johansson on 2022-09-12.
//

import Foundation
import SwiftUI

struct OnboardingItem: Identifiable {
    let id = UUID()
    let emoji: String
    let title: String
    let content: String
    let tag: Int
}

final class OnboardingManager: ObservableObject {
    
    @Published private(set) var items: [OnboardingItem] = []
    
    func load() {
        items = [
            .init(emoji: "👋",
                  title: "Welcome to the best app!!!",
                  content: "Här kommer all text stå från listan som är utbytbar!",
                  tag: (0)),
            .init(emoji: "🚘",
                  title: "Welcome to the second page of the best app!",
                  content: "Och här har vi då såklart lite mer info!",
                  tag: (1)),
            .init(emoji: "🧚🏾‍♀️",
                  title: "Welcome to the thiiiiiird page of the best app",
                  content: "Och här kommer då ääääännu mer info",
                  tag: (2)),
        ]
    }
}

