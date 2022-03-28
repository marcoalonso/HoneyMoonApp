//
//  ContentView.swift
//  HoneyMoon
//
//  Created by marco rodriguez on 18/03/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            
            
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymooonData[6])
            //Fixme: ADD padding to the cards later on.
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("SUCCESS"),
                  message: Text("Wishing a lovely and most precius of the times together for the amazing couple."), dismissButton: .default(Text("Happy Honeymoon!"))
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
