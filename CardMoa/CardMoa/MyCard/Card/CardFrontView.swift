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
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke()
                .foregroundColor(.gray)



            .frame(width: 240, height: 400)


            Image("\(cardName)_L")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 260, height: 400)
                .clipped()
                .cornerRadius(15)
                .padding(.horizontal, 5)
            
            VStack {
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(0.5), Color.white.opacity(0.7), Color.white]),
                               startPoint: .top, endPoint: .bottom)
                .frame(height: 250)
                .cornerRadius(15)
            }
            .frame(width: 260, height: 400, alignment: .bottom)
            
            HStack {
                Text("\(cardName)")
                    .font(.title3)
                    .bold()
                    .shadow(radius: 3)
                Spacer()

                Image(systemName: "hand.tap")
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                    .font(.title)
                    .shadow(radius: 2)
                

            }
            .padding(10)
            .frame(width: 260, height: 400, alignment: .bottom)
                     

        }
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

struct CardFrontView_Previews: PreviewProvider {
    static var previews: some View {
        CardFrontView(cardName: "Samsung_iDPET", degree: .constant(0))
    }
}
