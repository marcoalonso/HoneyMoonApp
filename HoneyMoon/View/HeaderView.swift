//
//  HeaderView.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 20/03/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                //action
                print("information")
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 25, weight: .regular))
            }
            .accentColor(Color.primary)
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                //action
                print("Guide")
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 25, weight: .regular))
            }
            .accentColor(Color.primary)
            
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
