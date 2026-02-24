//
//  HomeViewModel.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI
import Combine

final class HomeViewModel: ObservableObject {
    @Published var selectedCard: Int? = nil
    
    let cards = [
        HomeCard(id: 1, title: "Analytics", subtitle: "Track your progress", icon: "chart.bar", color: .blue),
        HomeCard(id: 2, title: "Tasks", subtitle: "Manage your work", icon: "checkmark.circle", color: .green),
        HomeCard(id: 3, title: "Messages", subtitle: "Stay connected", icon: "bubble.left", color: .purple),
        HomeCard(id: 4, title: "Settings", subtitle: "Customize your app", icon: "gearshape", color: .orange)
    ]
}

struct HomeCard: Identifiable {
    let id: Int
    let title: String
    let subtitle: String
    let icon: String
    let color: Color
}
