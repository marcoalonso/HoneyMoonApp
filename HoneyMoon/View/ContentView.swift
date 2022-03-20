//
//  ContentView.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 18/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymooonData[4])
            //Fixme: ADD padding to the cards later on.
                .padding()
            
            Spacer()
            
            FooterView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
