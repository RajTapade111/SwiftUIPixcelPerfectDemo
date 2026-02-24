//
//  DetailView.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI

struct DetailView: View {
    let card: HomeCard
    var animation: Namespace.ID
    
    @StateObject private var viewModel = DetailViewModel()
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            AppColors.background.ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: Spacing.lg) {
                    
                    // Hero Header
                    RoundedRectangle(cornerRadius: 24)
                        .fill(card.color.opacity(0.15))
                        .matchedGeometryEffect(id: "card\(card.id)", in: animation)
                        .frame(height: 220)
                        .overlay(
                            Image(systemName: card.icon)
                                .font(.system(size: 60))
                                .foregroundColor(card.color)
                        )
                        .padding(.horizontal, Spacing.lg)
                        .padding(.top, Spacing.lg)
                    
                    // Title
                    Text(card.title)
                        .font(AppTypography.title)
                        .foregroundColor(AppColors.textPrimary)
                        .padding(.horizontal, Spacing.lg)
                        .opacity(viewModel.showContent ? 1 : 0)
                        .offset(y: viewModel.showContent ? 0 : 20)
                    
                    // Description
                    Text("This is a detailed view demonstrating a smooth hero animation using MatchedGeometryEffect. The layout is clean, modern, and fully responsive.")
                        .font(AppTypography.subtitle)
                        .foregroundColor(AppColors.textSecondary)
                        .padding(.horizontal, Spacing.lg)
                        .opacity(viewModel.showContent ? 1 : 0)
                        .offset(y: viewModel.showContent ? 0 : 20)
                    
                    Spacer().frame(height: 40)
                }
            }
        }
        .onAppear {
            viewModel.animateContent()
        }
    }
}
