//
//  ButtonView.swift
//  TrafficLightsSwiftUI
//
//  Created by Семен on 15.10.2020.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        //Идей было много и с .border но внутри были не закругленные углы поэтому сделал через overplay, тоже не уверен в правильном решении. 100% не то
        Color(.white)
            .frame(width: 220, height: 60)
            .cornerRadius(15 * (60/50))
            .overlay(
        Color(.blue)
            .frame(width: 210, height: 50)
            .cornerRadius(15))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
