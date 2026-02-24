//
//  OnboardingView.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject private var viewModel = OnboardingViewModel()
    var onFinish: () -> Void
    
    var body: some View {
        ZStack {
            AppColors.background.ignoresSafeArea()
            
            VStack(spacing: Spacing.lg) {
                
                Spacer()
                
                Image(systemName: "sparkles")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 140, height: 140)
                    .foregroundColor(AppColors.primary)
                    .opacity(viewModel.animate ? 1 : 0)
                    .offset(y: viewModel.animate ? 0 : 20)
                    .animation(.easeOut(duration: 0.8), value: viewModel.animate)
                
                VStack(spacing: Spacing.sm) {
                    Text("Welcome")
                        .font(AppTypography.title)
                        .foregroundColor(AppColors.textPrimary)
                        .opacity(viewModel.animate ? 1 : 0)
                        .offset(y: viewModel.animate ? 0 : 20)
                    
                    Text("A clean SwiftUI demo converting Figma designs into pixel‑perfect UI.")
                        .font(AppTypography.subtitle)
                        .foregroundColor(AppColors.textSecondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, Spacing.lg)
                        .opacity(viewModel.animate ? 1 : 0)
                        .offset(y: viewModel.animate ? 0 : 20)
                }
                
                Spacer()
                
                PrimaryButton(title: "Get Started") {
                    onFinish()
                }
                .padding(.horizontal, Spacing.lg)
                .opacity(viewModel.animate ? 1 : 0)
                .offset(y: viewModel.animate ? 0 : 20)
                
                Spacer().frame(height: 40)
            }
        }
        .onAppear {
            viewModel.startAnimation()
        }
    }
}
