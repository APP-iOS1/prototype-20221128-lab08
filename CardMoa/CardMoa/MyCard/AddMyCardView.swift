//
//  AddMyCardView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/11/29.
//

import SwiftUI

struct AddMyCardView: View {
    @State private var selectedCardList: Bool = false
    @State private var creditColor: Color = .mainColor
    @State private var checkColor: Color = .gray
        
    var body: some View {
        ScrollView {
            VStack {
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
                .padding(.top, 15)
                
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack {
                        ForEach(CompanyName.CompanyList) { company in
                            Button {
                                
                            } label: {
                                Text(company.name)
                                    .font(.title3)
                                    .foregroundColor(.black)
                                    .bold()
                                    .frame(width: 70, height: 40)
                                    .overlay(
                                        Capsule()
                                            .stroke(Color("mainColor"), lineWidth: 2)
                                        //.shadow(radius: 10)
                                    )
                            }
                            
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                    
                } // ScrollView
                
                HStack {
                    Text("삼성카드")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                
                
                ForEach(Card.cardList) { card in
                    VStack {
                        AddCardListView(card: card)
                            
                    }
                    
                    
                    
                }
            }

            
            .navigationTitle("카드 추가")
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

struct AddMyCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddMyCardView()
    }
}
