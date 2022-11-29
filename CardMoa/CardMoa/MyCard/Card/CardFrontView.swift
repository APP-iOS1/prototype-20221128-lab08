//
//  CardFrontView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/11/29.
//

import SwiftUI

struct CardFrontView: View {
    var cardName: String
    @Binding var degree : Double
    
    var body: some View {
        VStack {
            Image("\(cardName)_L")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 260)
                .padding(.horizontal, 5)
        }
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

struct CardFrontView_Previews: PreviewProvider {
    static var previews: some View {
        CardFrontView(cardName: "Samsung_iDON.png", degree: .constant(0))
    }
}
