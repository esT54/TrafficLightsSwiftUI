//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Семен on 15.10.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    @State private var opacityRed = 0.0008
    @State private var opacityYellow = 0.0008
    @State private var opacityGreen = 0.0008
    @State private var textButton = "START"
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                // у меня с параметром opacity какая-то проблема: если передавать 0.1 вроде ок все работает, меняешь на другое и потом обратно - опять не работает, не понятно. сейчас при 0.008 не затемняет ..
                CellTLView(red: 255, green: 0, blue: 0, opacity: opacityRed)
                CellTLView(red: 255, green: 255, blue: 0, opacity: opacityYellow)
                CellTLView(red: 0, green: 255, blue: 0, opacity: opacityGreen)
                
                Spacer()
                
                Button(action: {
                    textButton = "NEXT"

                    
                    switch index {
                    case 1:
                        opacityRed = 0.0008
                        opacityYellow = 1.0
                    case 2:
                        opacityYellow = 0.0008
                        opacityGreen = 1.0
                    default:
                        index = 0
                        opacityRed = 1.0
                        opacityYellow = 0.0008
                        opacityGreen = 0.0008
                        
                    }
                    index += 1
                }) {
                    ZStack {
                        ButtonView()
                        Text(textButton)
                            .font(.title)
                            .foregroundColor(Color.white)
                            
                    }
  
                }
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
