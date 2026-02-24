//
//  SwiftUIFigmaPixelPerfectDemoApp.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI

@main
struct SwiftUIFigmaPixelPerfectDemoApp: App {
    @State private var showOnboarding = true

    var body: some Scene {
        WindowGroup {
            if showOnboarding {
                OnboardingView(onFinish: { showOnboarding = false })
            } else {
                HomeView()
            }
        }
    }
}
