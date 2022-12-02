//
//  CardDetailView.swift
//  CardMoa
//
//  Created by MIJU on 2022/11/30.
//

import SwiftUI

struct CardDetailView: View {
    @State private var tag: Int? = nil
    var body: some View {
        
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("삼성카드 iD ON")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.mainColor)
                    .padding(.bottom, 10)
                HStack {
                    Text("카드 이용 실적")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                }
                Text("이용 실적 반영기간: 2022. 11.01 ~ 2022.11.30")
                    .foregroundColor(.gray)
                    .font(.system(size: 15))
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
            
            
            ZStack(alignment: .leading) {
                Capsule()
                    .foregroundColor(Color(red: 237 / 255, green: 237 / 255, blue: 237 / 255))
                Capsule()
                    .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 10)
                    .foregroundColor(.mainColor)
                
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: 10)
            
            HStack {
                Spacer()
                VStack {
                    Circle().frame(width: 15, height: 15)
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
                    Circle().frame(width: 15, height: 15)
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
            .frame(width: UIScreen.main.bounds.width - 30)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("다음달 예정 혜택은?")
                        .bold()
                    Spacer()
                    Text("현재 1구간 혜택 예정")
                        .font(.system(size: 13))
                        .foregroundColor(.darkGray)
                    
                }
                .padding(.bottom, 5)
                
                HStack {
                    VStack {
                        HStack {
                            Text("필요 실적을 모두 달성하여,")
                            Spacer()
                        }
                        HStack {
                            Text("다음달 ")
                            Text("1구간 혜택")
                                .padding(.leading, -8)
                                .bold()
                            Text("으로 적용됩니다!")
                                .padding(.leading, -8)
                            Spacer()
                        }
                    }
                        .font(.system(size: 20))
                    Spacer()
                }
            }
            .padding(.vertical, 15)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("31일간 400,000원")
                                .foregroundColor(.mainColor)
                                .bold()
                            Text("을 더 사용하면,")
                                .padding(.leading, -8)
                        }
                        HStack {
                            Text("다음달")
                            Text("2구간 혜택")
                                .bold()
                            Text("으로 적용됩니다!")
                        }
                    }
                    Spacer()
                }
                .font(.system(size: 20))

            }
            
        }
        .padding(20)
        
        
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
    }
}
