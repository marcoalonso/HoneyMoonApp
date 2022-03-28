//
//  HeaderView.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 20/03/22.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    @Binding var showGuideView: Bool
    
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
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 25, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
            
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
