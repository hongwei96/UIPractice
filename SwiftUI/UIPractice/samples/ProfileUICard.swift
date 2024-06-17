//
//  ProfileUICard.swift
//  https://dribbble.com/shots/15854388-Profile-Card-UI-Design
//

import SwiftUI

private struct Info: View {
    var count: String
    var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(count).font(.subheadline).fontWeight(.bold)
            Text(text).font(.footnote)
        }
    }
}

struct ProfileUICard: View {
    var body: some View {
        ZStack {
            HStack(alignment: .top, spacing: 10) {
                // Profile Picture
                Image(.aiProfilePhoto)
                    .resizable()
                    .scaledToFit()
                    .offset(x: -2, y: 15)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(Color.white, lineWidth: 3)
                    }
                    .shadow(radius: 5)
                    .frame(width: 100, height: 100)
                
                // Details
                VStack(alignment: .leading) {
                    Text("Lily Summers").font(.title3).fontWeight(.bold)
                    Text("@Lily_RedSunset").font(.caption).fontWeight(.bold)
                    
                    Spacer().frame(height: 10)
                    
                    Text("If you like my work, consider supporting me on PayPal and help me make a dream come true.")
                        .font(.subheadline)
                    
                    Spacer().frame(height: 15)
                    
                    HStack {
                        Info(count: "74.3M", text: "Views")
                        Divider().foregroundStyle(Color.white)
                        Info(count: "17", text: "Rank")
                        Divider().foregroundStyle(Color.white)
                        Info(count: "45M", text: "Downloads")
                    }
                    .frame(height: 30)
                    
                    Spacer().frame(height: 15)
                    
                    HStack {
                        Button {
                        } label: {
                            Text("Follow").font(.subheadline)
                        }.buttonStyle(.borderedProminent)
                        Button {
                        } label: {
                            Text("View profile").font(.subheadline)
                        }.buttonStyle(.bordered)
                    }
                }
                .padding(.vertical, 10)
            }
            .padding(15)
            .background(Color.white.opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Fill entire screen
        .background(Color.cyan)
    }
}

#Preview {
    ProfileUICard()
}
