//
//  GuideComponent.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 20/03/22.
//

import SwiftUI

struct GuideComponent: View {
    
    // MARK: - Properties
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 29) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                Text(title.uppercased())
                    .font(.title)
                    .fontWeight(.heavy)

                Spacer()
                
                Text(subtitle.uppercased())
                    .font(.footnote)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.pink)
                
            }//Vstack
            Divider().padding(.bottom, 4)
            Text(description)
                .font(.footnote)
                .foregroundColor(.secondary)
                .fixedSize(horizontal: false, vertical: true)
            }
        }//Hstack
    }
}

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(title: "Title", subtitle: "Swipe right", description: "This is a placeholder sentence, This is a placeholder sentence, This is a placeholder sentence, This is a placeholder sentence", icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
