//
//  ContentView.swift
//  RGB_Slider
//
//  Created by Théo Daguier on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var red: Double = 0.0
    @State var green: Double = 0.0
    @State var blue: Double = 0.0
    
    var body: some View {
        VStack {
            Color(red: red, green: green, blue: blue)
                .ignoresSafeArea()
            HStack {
                VStack(alignment: .leading){
                    Text("red \r \(red, specifier: "%.1f")")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Slider(value: $red ,
                           in: 0...255)
                }
                VStack(alignment: .leading){
                    Text("green \r \(green, specifier: "%.1f")")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Slider(value: $green ,
                           in: 0...255)
                }
                VStack(alignment: .leading){
                    Text("blue \r  \(blue , specifier: "%.1f")")
                        .font(.title)
                        .multilineTextAlignment(.leading)
                    Slider(value: $blue ,
                           in: 0...255)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
