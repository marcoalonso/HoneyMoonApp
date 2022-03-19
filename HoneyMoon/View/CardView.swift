//
//  CardView.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 18/03/22.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    let id = UUID()
    var honeymoon: Destination
    
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12){
                    Text(honeymoon.place.uppercased())
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 5)
                        .overlay(
                        Rectangle()
                            .fill(Color.white)
                            .frame(height:3), alignment: .bottom
                        )//overlay
                    
                    
                    Text(honeymoon.country.uppercased())
                        .foregroundColor(Color.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule().fill(Color.white)
                        )
                }//Vstack
                    .frame(minWidth: 280)
                    .padding(.bottom, 50),
                alignment: .bottom
            )//Overlay
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(honeymoon: honeymooonData[1])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
