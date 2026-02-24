//
//  CardView.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI

struct CardView: View {
    let card: HomeCard

    var body: some View {
        VStack(alignment: .leading, spacing: Spacing.sm) {
            Image(systemName: card.icon)
                .font(.system(size: 28))
                .foregroundColor(AppColors.primary)
                .padding(Spacing.sm)
                .background(AppColors.primary.opacity(0.1))
                .cornerRadius(12)
            
            Text(card.title)
                .font(AppTypography.title.weight(.semibold))
                .foregroundColor(AppColors.textPrimary)
            
            Text(card.subtitle)
                .font(AppTypography.subtitle)
                .foregroundColor(AppColors.textSecondary)
        }
        .padding(Spacing.lg)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppColors.background)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.05), radius: 8, y: 4)
    }
}
