//
//  CardFlipView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/11/29.
//

import SwiftUI

struct CardFlipView: View {
    var card: Card
    
    @State var backDegree = -90.0
    @State var frontDegree = 0.0
    @State var isFlipped = false
    
    let durationAndDelay : CGFloat = 0.3

    var body: some View {
        ZStack {
            CardBackView(degree: $backDegree)
            CardFrontView(cardName: card.imgName, degree: $frontDegree)
            //if backDegree == 0 { //값이 0 됐을 떄 뿅! 나와서 어색해 보였던 듯?
            CardDetailButtonView(degree: $backDegree)
            //}
        }
        .onTapGesture {
            flipCard ()
        }
    }
    
    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
            }
        }
    } // flipCard
    
}

struct CardFlipView_Previews: PreviewProvider {
    static var previews: some View {
        CardFlipView(card: Card(name: "삼성 ID ON", imgName: "Samsung_iDON"))
    }
}
