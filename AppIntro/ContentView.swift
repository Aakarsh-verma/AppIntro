//
//  ContentView.swift
//  AppIntro
//
//  Created by Aakarsh Verma on 15/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        IntroView()
            .environment(\.colorScheme, .dark)
    }
}

#Preview {
    ContentView()
}
