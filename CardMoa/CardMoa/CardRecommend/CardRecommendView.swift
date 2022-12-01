//
//  CardRecommendView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/28.
//

import SwiftUI

struct CardRecommendView: View {
    @State private var selectedCardList: Bool = false
    @State private var creditColor: Color = .mainColor
    @State private var checkColor: Color = .gray

    var body: some View {
        NavigationStack{
            ScrollView {
                VStack {
                    HStack {
                        Text("내 카드 실적 한 눈에 확인하기")
                        Spacer()
                    }
                    .font(.title2)
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    
                    Image("graph")
                        .padding(.bottom, 15)
                    
                    
                    Rectangle()
                        .frame(height:18)
                        .foregroundColor(.lightGray)
                    
                    VStack {
                        HStack {
                            Text("식사")
                                .foregroundColor(.myColor)
                                .font(.system(size: 25))
                            Text("카테고리에서 혜택 더 받는 카드")
                            Spacer()
                            
                        }
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                        
                        
                        HStack {
                            Text("현대카드M Bo...")
                            Text("▼")
                                .foregroundColor(.mainColor)
                            Text("를 바꾸면 받는 혜택")
                                
                            Spacer()
                        }.font(.title3)
                        .padding(.horizontal, 20)
                        
                        
                        HStack {
                            Image("\(Card.cardList[0].imgName)_B")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                                .padding(0)
                            
                            VStack(alignment: .leading) {
                                Text(Card.cardList[0].name)
                                    .foregroundColor(.gray)
                                    .bold()
                                
                                Spacer()
                                
                                Text("스타벅스 최대 40% -> 60%")
                                    .bold()
                                Text("연회비 10,000원")
                            }
                            .frame(height: 70)
                            
                            Button {
                                
                            } label: {
                                Text("상품신청")
                                    .font(.callout)
                                    .frame(height: 30)
                                    //.bold()
                                    .foregroundColor(.black)
                            }
                            .buttonStyle(.bordered)
                            
                        }
                        .frame(height: 100)
                        
                        Divider()
                            .frame(width: UIScreen.main.bounds.width - 30)
                        
                        HStack {
                            Image("\(Card.cardList[1].imgName)_B")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                                .padding(0)
                            
                            VStack(alignment: .leading) {
                                Text(Card.cardList[1].name)
                                    .foregroundColor(.gray)
                                    .bold()
                                
                                Spacer()
                                
                                Text("공과금 3% -> 10%")
                                    .bold()
                                Text("연회비 100% 캐시백")
                            }
                            .frame(height: 70)
                            
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("상품신청")
                                    .font(.callout)
                                    .frame(height: 30)
                                    //.bold()
                                    .foregroundColor(.black)
                            }
                            .buttonStyle(.bordered)
                            
                        }
                        .padding(20)
                        .frame(height: 100)
                    }
                    
                    Rectangle()
                        .frame(height:10)
                        .foregroundColor(.lightGray)
                        .padding(.top, 30)
                    
                    VStack {
                        HStack {
                            Text("카페")
                                .foregroundColor(.myColor)
                                .font(.system(size: 25))
                            Text("카테고리에서 혜택 더 받는 카드")
                            Spacer()
                            
                        }
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                        
                        
                        HStack {
                            Text("현대카드M Bo...")
                            Text("▼")
                                .foregroundColor(.mainColor)
                            Text("를 바꾸면 받는 혜택")
                                
                            Spacer()
                        }.font(.title3)
                        .padding(.horizontal, 20)
                        
                        
                        HStack {
                            Image("\(Card.cardList[0].imgName)_B")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                                .padding(0)
                            
                            VStack(alignment: .leading) {
                                Text(Card.cardList[0].name)
                                    .foregroundColor(.gray)
                                    .bold()
                                
                                Spacer()
                                
                                Text("스타벅스 최대 40% -> 60%")
                                    .bold()
                                Text("연회비 10,000원")
                            }
                            .frame(height: 70)
                            
                            Button {
                                
                            } label: {
                                Text("상품신청")
                                    .font(.callout)
                                    .frame(height: 30)
                                    //.bold()
                                    .foregroundColor(.black)
                            }
                            .buttonStyle(.bordered)
                            
                        }
                        .frame(height: 100)
                        
                        Divider()
                            .frame(width: UIScreen.main.bounds.width - 30)
                        
                        HStack {
                            Image("\(Card.cardList[1].imgName)_B")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                                .padding(0)
                            
                            VStack(alignment: .leading) {
                                Text(Card.cardList[1].name)
                                    .foregroundColor(.gray)
                                    .bold()
                                
                                Spacer()
                                
                                Text("공과금 3% -> 10%")
                                    .bold()
                                Text("연회비 100% 캐시백")
                            }
                            .frame(height: 70)
                            
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("상품신청")
                                    .font(.callout)
                                    .frame(height: 30)
                                    //.bold()
                                    .foregroundColor(.black)
                            }
                            .buttonStyle(.bordered)
                            
                        }
                        .padding(20)
                        .frame(height: 100)
                    }
                    Rectangle()
                        .frame(height:10)
                        .foregroundColor(.lightGray)
                        .padding(.top, 30)

                    VStack {
                        HStack {
                            Text("도서")
                                .foregroundColor(.myColor)
                                .font(.system(size: 25))
                            Text("카테고리에서 혜택 더 받는 카드")
                            Spacer()
                            
                        }
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 20)
                        
                        
                        HStack {
                            Text("현대카드M Bo...")
                            Text("▼")
                                .foregroundColor(.mainColor)
                            Text("를 바꾸면 받는 혜택")
                                
                            Spacer()
                        }.font(.title3)
                        .padding(.horizontal, 20)
                        
                        
                        HStack {
                            Image("\(Card.cardList[0].imgName)_B")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                                .padding(0)
                            
                            VStack(alignment: .leading) {
                                Text(Card.cardList[0].name)
                                    .foregroundColor(.gray)
                                    .bold()
                                
                                Spacer()
                                
                                Text("스타벅스 최대 40% -> 60%")
                                    .bold()
                                Text("연회비 10,000원")
                            }
                            .frame(height: 70)
                            
                            Button {
                                
                            } label: {
                                Text("상품신청")
                                    .font(.callout)
                                    .frame(height: 30)
                                    //.bold()
                                    .foregroundColor(.black)
                            }
                            .buttonStyle(.bordered)
                            
                        }
                        .frame(height: 100)
                        
                        Divider()
                            .frame(width: UIScreen.main.bounds.width - 30)
                        
                        HStack {
                            Image("\(Card.cardList[1].imgName)_B")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                                .padding(0)
                            
                            VStack(alignment: .leading) {
                                Text(Card.cardList[1].name)
                                    .foregroundColor(.gray)
                                    .bold()
                                
                                Spacer()
                                
                                Text("공과금 3% -> 10%")
                                    .bold()
                                Text("연회비 100% 캐시백")
                            }
                            .frame(height: 70)
                            
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("상품신청")
                                    .font(.callout)
                                    .frame(height: 30)
                                    //.bold()
                                    .foregroundColor(.black)
                            }
                            .buttonStyle(.bordered)
                            
                        }
                        .padding(20)
                        .frame(height: 100)
                    }
                    
                    Spacer()
                    
                    
                    
                }
            }
             // ZStack
            
            .navigationTitle("카드 추천")
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(
                Color.mainColor,
                for: .navigationBar
                //for: .navigationBar, .tabBar
            )
            .toolbarBackground(
                Color.white,
                for: .tabBar
            )
            .toolbarBackground(.visible, for: .navigationBar, .tabBar)
            
        }
    }
}

struct CardRecommendView_Previews: PreviewProvider {
    static var previews: some View {
        CardRecommendView()
    }
}
