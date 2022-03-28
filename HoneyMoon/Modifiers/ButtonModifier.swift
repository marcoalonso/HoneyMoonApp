//
//  ButtonModifier.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 27/03/22.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(Capsule().fill(Color.pink))
            .foregroundColor(Color.white)
    }
}


    
