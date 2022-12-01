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
    @State private var tag: Int? = nil
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 18)
                .stroke(.gray.opacity(0.7), lineWidth: 0.5)
                .frame(width: width, height: height)
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("삼성카드 iD ON")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.mainColor)
                        .padding(.bottom, 10)
                    HStack {
                        Text("카드 이용 실적")
                            .fontWeight(.bold)
                    }
                    Text("이용 실적 반영기간: 2022. 11.01 ~ 2022.11.30")
                        .foregroundColor(.gray)
                        .font(.system(size: 11))
                        .padding(.bottom, 10)
                    HStack {
                        Text("총 사용금액")
                        Spacer()
                        Text("420,557원")
                            .fontWeight(.bold)
                            .font(.title3)
                    }
                    
                }
                Divider()
                    .padding(.vertical, 15)
                HStack {
                    Text("2022년 12월 예정 혜택")
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.bottom, 10)
                
                HStack {
                    Spacer()
                    Text("현재 1구간 혜택 예정")
                        .font(.system(size: 10))
                        .foregroundColor(.darkGray)
                        
                }
                
                ZStack(alignment: .leading) {
                    Capsule().frame(width: 230, height: 10)
                        .foregroundColor(Color(red: 237 / 255, green: 237 / 255, blue: 237 / 255))
                    Capsule().frame(width: 115, height: 10)
                        .foregroundColor(.mainColor)
                    
                }
                HStack {
                    Spacer()
                    VStack {
                        Circle().frame(width: 12, height: 12)
                            .foregroundColor(.mainColor)
                            .overlay(
                                Text("1")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold))
                            .font(.system(size: 12))
                        Text("40만원")
                            .font(.system(size: 10))
                    }
                    Spacer()
                    VStack {
                        Circle().frame(width: 12, height: 12)
                            .foregroundColor(.mainColor)
                            .overlay(
                                Text("2")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold))
                            .font(.system(size: 12))
                        Text("80만원")
                            .font(.system(size: 10))
                    }
                }
                
                Spacer()
            }
            .padding(20)
            .frame(width: 260, height: 410)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        
    }
    
}

struct CardBackView_Previews: PreviewProvider {
    static var previews: some View {
        CardBackView(degree: .constant(0))
    }
}
