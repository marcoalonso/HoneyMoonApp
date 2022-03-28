//
//  TitleModifier.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 27/03/22.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}

