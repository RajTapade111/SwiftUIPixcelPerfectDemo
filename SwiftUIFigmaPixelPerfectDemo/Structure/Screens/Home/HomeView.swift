//
//  HomeView.swift
//  SwiftUIFigmaPixelPerfectDemo
//
//  Created by Rajgopal Kedarnath Tapade on 24/02/26.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @Namespace private var animation

    var body: some View {
        NavigationView {
            ZStack {
                AppColors.background.ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: Spacing.lg) {
                        
                        Text("Dashboard")
                            .font(AppTypography.title)
                            .foregroundColor(AppColors.textPrimary)
                            .padding(.horizontal, Spacing.lg)
                            .padding(.top, Spacing.lg)
                        
                        LazyVGrid(columns: [
                            GridItem(.flexible(), spacing: Spacing.lg),
                            GridItem(.flexible(), spacing: Spacing.lg)
                        ], spacing: Spacing.lg) {
                            ForEach(viewModel.cards) { card in
                                NavigationLink(
                                    destination: DetailView(card: card, animation: animation)
                                ) {
                                    CardView(card: card)
                                        .matchedGeometryEffect(id: "card\(card.id)", in: animation)
                                }
                                .buttonStyle(.plain)

                            }
                        }
                        .padding(.horizontal, Spacing.lg)
                        
                        Spacer().frame(height: 40)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}
