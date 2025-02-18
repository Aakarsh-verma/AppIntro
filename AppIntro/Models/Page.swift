//
//  Page.swift
//  AppIntro
//
//  Created by Aakarsh Verma on 15/08/24.
//

import SwiftUI

enum Page: String, CaseIterable {
    case page1 = "playstation.logo"
    case page2 = "gamecontroller.fill"
    case page3 = "link.icloud.fill"
    case page4 = "text.bubble.fill"
    
    var title: String {
        switch self {
        case .page1: "Welcome to Playstation"
        case .page2: "Dual sense controller"
        case .page3: "Remote Play"
        case .page4: "Connect with players online"
        }
    }
    
    var subTitle: String {
        switch self {
        case .page1: "New Journey Begins"
        case .page2: "Discover better performance"
        case .page3: "Stream Online"
        case .page4: "Reach out to world"
        }
    }
    
    var index: CGFloat {
        switch self {
        case .page1: 0
        case .page2: 1
        case .page3: 2
        case .page4: 3
        }
    }
    
    var nextPage: Page {
        let index = Int(self.index) + 1
        if index < 4 {
            return Page.allCases[index]
        }
        return self
    }
    
    var previousPage: Page {
        let index = Int(self.index) - 1
        if index >= 0 {
            return Page.allCases[index]
        }
        return self
    }
}
