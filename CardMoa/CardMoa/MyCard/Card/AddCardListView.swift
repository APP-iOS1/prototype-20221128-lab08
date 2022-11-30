//
//  AddCardListView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/11/29.
//

import SwiftUI

struct AddCardListView: View {
    @State var listX: CGFloat = 0
    var card: Card
    @State private var showingAlert: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255))
                .frame(width: UIScreen.main.bounds.width - 30, height: 170)
                .shadow(radius: 5, y: 3)
                .overlay(
                    HStack() {
                        Spacer()
                        VStack {
                            Image(systemName: "plus.circle")
                            Text("나의 카드 \n등록")
                                .bold()
                                .multilineTextAlignment(.center)
                        }
                        .padding(10)
                    }
                )
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 170)
                    .shadow(radius: 5, x: 4, y: 3)
                
                VStack {
                    Text("1. \(card.name)")
                    HStack {
                        Image("\(card.imgName)_B")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Image(systemName: "ticket")
                                Text("연회비 지원")
                            }
                            HStack {
                                Image(systemName: "fork.knife")
                                Text("외식 & 베이커리")
                            }
                            HStack {
                                Image(systemName: "bus")
                                Text("교통")
                            }
                            HStack {
                                Image(systemName: "cart.fill")
                                Text("쇼핑")
                            }
                        }
                        .padding(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke()
                                .foregroundColor(.gray)
                        )
                        .foregroundColor(.gray)
                    }
                }
                
            } // ZStack2
            .offset(x: listX)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        if listX <= 0 && listX >= -100 { //-100보다 크고 0보다 작을 때
                            listX += value.translation.width / 30
                            if listX <= -100 { // -100보다 작거나 같을 때
                                showingAlert = true
                               
                            }
                        }
                        
                    }
                    .onEnded { value in
                        listX = 0
                    }
            )
            .alert("카드를 추가하시겠습니까?", isPresented: $showingAlert) {
                Button("Cancel", role: .cancel) {
                    listX = 0
                }
                Button("OK") {
                    listX = 0
                }
                
            }
        }
        
    } // ZStack1
}


struct AddCardListView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardListView(card: Card(name: "삼성 ID ON", imgName: "Samsung_iDON"))
    }
}
