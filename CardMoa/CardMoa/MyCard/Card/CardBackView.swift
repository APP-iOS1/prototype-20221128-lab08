//
//  CardBackView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/11/29.
//

import SwiftUI

struct CardBackView: View {
    let width : CGFloat = 260
    let height : CGFloat = 410
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .stroke(.gray.opacity(0.7), lineWidth: 0.5)
                .frame(width: width, height: height)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        
    }
}

struct CardBackView_Previews: PreviewProvider {
    static var previews: some View {
        CardBackView(degree: .constant(0))
    }
}
