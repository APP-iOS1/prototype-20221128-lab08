//
//  CardDetailHistoryView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/12/01.
//

import SwiftUI

struct CardDetailHistoryView: View {
    var body: some View {
        ScrollView {
            Image("CardUse")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct CardDetailHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailHistoryView()
    }
}
