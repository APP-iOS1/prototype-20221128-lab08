//
//  MyCardView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/28.
//

import SwiftUI

struct MyCardView: View {
    @State private var selectedCardList: Bool = false
    @State private var creditColor: Color = .mainColor
    @State private var checkColor: Color = .gray
    
    var body: some View {
        NavigationStack{
        
            ZStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        ForEach(Card.cardList) { card in
                            VStack {
                                CardFlipView(card: card)
                            }
                        }
                        .frame(width: 300, height: 600)
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    
                } // ScrollView
                
                HStack {
                    Button {
                        selectedCardList.toggle()
                        creditColor = .red
                        checkColor = .gray
                    } label: {
                        Text("신용카드")
                            .foregroundColor(creditColor)
                    }
                    
                    Button {
                        selectedCardList.toggle()
                        creditColor = .gray
                        checkColor = .red
                    } label: {
                        Text("체크카드")
                            .foregroundColor(checkColor)
                    }
                    
                    Spacer()
                    
                    
                    
                }
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.gray)
                .padding(.horizontal, 20)
                .offset(y: -280)
                
                
                HStack {
                    Spacer()
                    NavigationLink {
                        AddMyCardView()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .foregroundColor(.buttonColor)
                    }
                    
                }
                .padding(.trailing, 30)
                .offset(y: 260)
                
                .navigationTitle("찹쌀님이 소유한 카드")
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
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink {
                            
                        } label: {
                            Image(systemName: "bell.fill")
                                .resizable()
                                .frame(width: 27, height: 30)
                                .offset(y: 47)
                        }
                        
                        
                    }
                }
                
            } // ZStack
        } // NavigationStack
    }// body
}





struct MyCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyCardView()
    }
}
