//
//  ContentView.swift
//  testAPI
//
//  Created by Home Computer on 8/10/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var message: String = "Push!"
    
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
            
            Button(action: {
               self.buttonPressed()
            }) {
               Text(message)
                   .padding()
//                   .background(Color.blue)
                   .foregroundColor(.white)
                   .cornerRadius(8)
           }
        }
        .padding()
    }
    
    func buttonPressed() {
        message = "Button was pressed!"
        // Perform your API call or any other action here
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
