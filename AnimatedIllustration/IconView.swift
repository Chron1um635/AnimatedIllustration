//
//  IconView.swift
//  AnimatedIllustration
//
//  Created by Максим Назаров on 20.10.2024.
//

import SwiftUI

struct IconView: View {
    
    let isAnimating: Bool
        
    var body: some View {
        GeometryReader { geometry in
            
            let height = geometry.size.height
            let width = geometry.size.width
            let size = min(height, width)
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: middle))
                path.addLine(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: middle, y: height))
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.red,
                            Color.yellow
                        ]
                    ),
                    startPoint: .topLeading,
                    endPoint: .trailing
                )
            )
            Path { path in
                path.move(to: CGPoint(x: 0, y: middle))
                path.addLine(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: middle, y: height))
            }
            .rotation(.degrees(180))
            .fill(
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.red,
                            Color.yellow
                        ]
                    ),
                    startPoint: .topTrailing,
                    endPoint: .leading
                )
            )
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle * 0.2))
                path.addLine(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: isAnimating ? middle * 0.6 : middle * 0.2, y: isAnimating ? middle * 0.6 : middle))
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.red,
                            Color.clear
                        ]
                    ),
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            .rotationEffect(.degrees(isAnimating ? 0 : 90))
            .animation(.easeInOut, value: isAnimating)
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: middle * 1.8))
                path.addLine(to: CGPoint(x: middle, y: middle))
                path.addLine(to: CGPoint(x: isAnimating ? middle * 1.4 : middle * 1.8, y: isAnimating ? middle * 1.4 : middle))
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.red,
                            Color.clear
                        ]
                    ),
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .rotationEffect(.degrees(isAnimating ? 0 : 90))
            .animation(.easeInOut, value: isAnimating)
            
            
        }
        
    }
}

#Preview {
    IconView(isAnimating: false)
        .frame(width: 300, height: 300)
}
