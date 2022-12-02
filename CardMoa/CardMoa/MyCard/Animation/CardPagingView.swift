//
//  CardPagingView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/12/02.
//

import SwiftUI
import CollectionViewPagingLayout

struct CardPagingView: View {
    var options: ScaleTransformViewOptions {
        .layout(.linear)
    }

    var body: some View {
        ScalePageView(Card.cardList) { card in
            CardFlipView(card: card)
        }
        .options(options)
        .pagePadding(
            vertical: .absolute(100),
            horizontal: .absolute(80)
        )
        .frame(height: 600)
    }
}

struct CardPagingView_Previews: PreviewProvider {
    static var previews: some View {
        CardPagingView()
    }
}
