//
//  DetailViewModel.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI
import Combine

final class DetailViewModel: ObservableObject {
    @Published var showContent = false
    
    func animateContent() {
        withAnimation(.easeOut.delay(0.2)) {
            showContent = true
        }
    }
}
