//
//  ProfileView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/28.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            VStack{
                Text("찹쌀님") + Text(" 소비의 모든 것").foregroundColor(.myColor)
            }.font(.title2).fontWeight(.bold)
                .padding(.leading, -170)
                .padding(.bottom)
            ScrollView{
                Rectangle()
                    .foregroundColor(.lightPink)
                    .cornerRadius(10)
                    .frame(width: 320, height: 60)
                    .overlay(
                        HStack{
                            Image("naver")
                            Text("네이버페이 결제왕").fontWeight(.semibold)
                        }.padding(.leading, -120)
                    ).padding(.bottom, 3)
                
                Rectangle()
                    .foregroundColor(.lightPink)
                    .cornerRadius(10)
                    .frame(width: 320, height: 60)
                    .overlay(
                        HStack{
                            Image("kakao")
                            Text("춘식이는 내 친구").fontWeight(.semibold)
                        }.padding(.leading, -130)
                    ).padding(.bottom)
                
                
                Rectangle()
                    .foregroundColor(.lightGray)
                    .cornerRadius(10)
                    .frame(width: 320, height: 300)
                    .overlay(
                        VStack(alignment: .leading){
                            HStack{
                                Text("카드별 자동이체").font(.title3).fontWeight(.bold)
                            }
                            HStack(alignment: .top){
                                Text("3").fontWeight(.bold) + Text("일").font(.system(size: 12)).fontWeight(.bold)
                                
                                VStack(alignment: .leading){
                                    Text("5,600원")
                                    Text("현대카드 M | Notion")
                                }
                                .padding(.leading, 30)
                                .font(.system(size: 15))
                            }
                            .foregroundColor(.darkGray)
                            .padding(.leading, 20)
                            .padding(.top,2)
                            
                            Rectangle()
                                .frame(width: 1.5, height: 20)
                                .padding(.leading, 32)
                                .foregroundColor(.myColor)
                                .padding(.top, -10)
                            
                            HStack(alignment: .top){
                                Text("12").fontWeight(.bold).font(.system(size: 20)) + Text("일").font(.system(size: 15)).fontWeight(.bold)
                                VStack(alignment: .leading){
                                    Text("17,000원")
                                    Text("우리 V카드 | 넷플릭스")
                                }
                                .padding(.leading, 17)
                                .font(.system(size: 15))
                                .fontWeight(.semibold)
                                
                                HStack{
                                    Image("warning").resizable().frame(width: 17, height: 17)
                                    Text("잔고부족")
                                        .font(.system(size: 12))
                                        .padding(.leading, -5)
                                        .padding(.top, 5)
                                        .foregroundColor(.myColor)
                                        .fontWeight(.semibold)
                                }.padding(.leading, 8)
                                
                            }.padding(.leading, 20)
                            
                            Rectangle().frame(width: 1.5, height: 20).padding(.leading, 32).foregroundColor(.myColor)
                            
                            HStack(alignment: .top){
                                Text("25").fontWeight(.bold) + Text("일").font(.system(size: 12)).fontWeight(.bold)
                                VStack(alignment: .leading){
                                    VStack(alignment: .leading){
                                        Text("78,000원")
                                        Text("신한 S20 | DB생명보험")
                                    }.padding(.bottom, 1)
                                    
                                    VStack(alignment: .leading){
                                        Text("75,000원")
                                        Text("신한 S20 | 삼성화재메리츠")
                                    }
                                }
                                .padding(.leading, 20)
                                .font(.system(size: 15))
                            }.padding(.leading, 20)
                                .foregroundColor(.darkGray)
                            
                            
                        }
                    )
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
