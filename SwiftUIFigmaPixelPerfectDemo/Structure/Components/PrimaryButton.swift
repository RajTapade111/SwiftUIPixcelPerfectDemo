//
//  PrimaryButton.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppTypography.button)
                .foregroundColor(.white)
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .background(AppColors.primary)
                .cornerRadius(12)
                .shadow(color: AppColors.primary.opacity(0.3), radius: 8, y: 4)
        }
    }
}
