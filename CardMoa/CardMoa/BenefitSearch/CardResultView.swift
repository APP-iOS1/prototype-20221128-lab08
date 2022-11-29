//
//  CardResultView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/29.
//

import SwiftUI

struct CardResultView: View {
    @Binding var search : String
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                Text("\(search)").foregroundColor(.myColor)
                Text("결제 혜택이 있는 카드")
            }.font(.title2).fontWeight(.bold)
                .padding(.leading, -160)
                .padding(.bottom, 20)
            
            //카드 1
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 7, x: 0, y: 5)
                .frame(width: 360, height: 160)
                .overlay(
                    VStack(alignment: .leading){
                        Text("1.현대카드ZERO Edition2(할인형)")
                            .fontWeight(.semibold)
                            .padding(.top, 2)
                            .padding(.leading, 4)
                        
                        HStack{
                            Image("hundaiCard1").resizable().frame(width: 158, height: 100)
                            VStack(alignment: .leading){
                                Text("할인혜택")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                Text("파리바게뜨 10% 할인 \n(1만원 이상 결제 시)")
                                    .font(.system(size: 14))
                                    .foregroundColor(.darkGray)
                                    .padding(.bottom, 1)
                                
                                Text("사용조건")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                Text("직접 1개월, 40만원 이상 사용")
                                    .font(.system(size: 14))
                                    .foregroundColor(.darkGray)
                            }
                        }
                    }).padding(.bottom)
            
            //카드 2
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 7, x: 0, y: 5)
                .frame(width: 360, height: 160)
                .overlay(
                    VStack(alignment: .leading){
                        Text("2.현대카드M BOOST")
                            .fontWeight(.semibold)
                            .padding(.top, 2)
                            .padding(.leading, 4)
                        
                        HStack{
                            Image("hundaiCard2").resizable().frame(width: 158, height: 100)
                            VStack(alignment: .leading){
                                Text("할인혜택")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                Text("파리바게뜨 10% 할인 \n(1만원 이상 결제 시)")
                                    .font(.system(size: 14))
                                    .foregroundColor(.darkGray)
                                    .padding(.bottom, 1)
                                
                                Text("사용조건")
                                    .font(.system(size: 16))
                                    .fontWeight(.semibold)
                                Text("직접 1개월, 40만원 이상 사용")
                                    .font(.system(size: 14))
                                    .foregroundColor(.darkGray)
                            }
                        }
                    })
            
            
            
            VStack(alignment: .trailing){
                Text("이 카드로 결제해 보세요")
                    .foregroundColor(.darkGray)
                    .font(.system(size: 14))
                    .padding(.top)
                    .padding(.trailing, 23)
            }.frame(maxWidth: .infinity, alignment: .trailing)
            Spacer()
        }
    }
}

struct CardResultView_Previews: PreviewProvider {
    static var previews: some View {
        CardResultView(search: .constant("파리바게뜨"))
    }
}
