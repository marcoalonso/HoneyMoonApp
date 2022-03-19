//
//  ContentView.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 18/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymooonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
