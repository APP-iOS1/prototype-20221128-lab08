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
                    Text("삼성카드 id ON")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.mainColor)
                    HStack {
                        Text("카드 이용 실적")
                            .fontWeight(.medium)
                        Text("2022. 11.01 ~ 2022.11.30")
                            .foregroundColor(.gray)
                            .font(.system(size: 11))
                    }
                    HStack {
                        Text("총 사용금액")
                        Spacer()
                        Text("420,557원")
                            .fontWeight(.bold)
                            .font(.title3)
                    }
                }
                Divider()
                HStack {
                    Text("2022년 12월 예정 혜택")
                        .fontWeight(.bold)
                    Spacer()
                }
                //                HStack {
                //                    Spacer()
                //                    Text("현재 1구간 혜택 예정")
                //                        .font(.system(size: 13))
                //                        .foregroundColor(.darkGray)
                //                        .padding(.trailing, 10)
                //                }
                
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
                HStack {
                    Text("1구간 혜택")
                        .foregroundColor(.mainColor)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                VStack(spacing: 10) {
                    HStack {
                        Text("커피&베이커리")
                            .fontWeight(.medium)
                        Spacer()
                        Text("50% 청구할인")
                            .foregroundColor(.darkGray)
                    }
                    HStack {
                        Text("편의점")
                            .fontWeight(.medium)
                        Spacer()
                        Text("10% 청구할인")
                            .foregroundColor(.darkGray)
                    }
                    HStack {
                        Text("대중교통")
                            .fontWeight(.medium)
                        Spacer()
                        Text("10% 청구할인")
                            .foregroundColor(.darkGray)
                    }
                    .padding(5)
                }
//                NavigationLink(destination: CardDetailView(), tag: 1, selection: self.$tag) {
//                    Button(action: {
//                        self.tag = 1
//                    }) {
//                        Text("카드 상세 혜택 보러가기")
//                            .foregroundColor(.white)
//                            .fontWeight(.bold)
//                            .frame(width: 235, height: 30)
//                            .background(Color.mainColor)
//                            .cornerRadius(5)
//                    }
//
//                }
                
            }
            .frame(width: 240, height: 400)
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        
    }
    
}

struct CardBackView_Previews: PreviewProvider {
    static var previews: some View {
        CardBackView(degree: .constant(0))
    }
}
