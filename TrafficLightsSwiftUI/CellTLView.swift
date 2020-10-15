//
//  CellTLView.swift
//  TrafficLightsSwiftUI
//
//  Created by Семен on 15.10.2020.
//

import SwiftUI

struct CellTLView: View {

    let red: Double
    let green: Double
    let blue: Double
    let opacity: Double
    
    //Не уверен, нужно было ли это делать, но у меня не вызывался в ContentView нормальный инициализатор, поэтому прописал
    init(red: Double, green: Double, blue: Double, opacity: Double) {
        self.red = red
        self.green = green
        self.blue = blue
        self.opacity = opacity
    }
    var body: some View {

            Color(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
                .frame(width: 120, height: 120)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white, lineWidth: 7))
                .padding()
    }
}

struct CellTLView_Previews: PreviewProvider {
    static var previews: some View {
        CellTLView(red: 255, green: 0.0, blue: 0.0, opacity: 0.1)
    }
}
