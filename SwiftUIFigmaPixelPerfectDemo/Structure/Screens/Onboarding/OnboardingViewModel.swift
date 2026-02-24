//
//  OnboardingViewModel.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI
import Combine

final class OnboardingViewModel: ObservableObject {
    @Published var animate = false
    
    func startAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            withAnimation(.easeOut(duration: 0.8)) {
                self.animate = true
            }
        }
    }
}
