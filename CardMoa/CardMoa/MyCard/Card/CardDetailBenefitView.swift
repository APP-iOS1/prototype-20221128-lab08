//
//  CardDetailBenefitView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/12/01.
//

import SwiftUI

struct CardDetailBenefitView: View {
    var body: some View {
        
        
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                    
                    Text("월간혜택")
                        .padding(.horizontal, 10)
                        .font(.largeTitle)
                        .bold()
                    
    //                List {
    //                    Section {
                            ForEach(BenefitCategory.categoryList) { category in
                                
                                VStack {
                                    HStack {
                                        Text("\(category.category)")
                                            .bold()
                                        Spacer()
                                    }
                                    ZStack(alignment: .leading) {
                                        Capsule()
                                            .foregroundColor(Color(red: 237 / 255, green: 237 / 255, blue: 237 / 255))
                                        Capsule()
                                            .frame(width: (UIScreen.main.bounds.width - category.width), height: 10)
                                            .foregroundColor(.mainColor)
                                        
                                    }
                                    .frame(width: UIScreen.main.bounds.width - 50, height: 10)
                                    HStack {
                                        Text("\(category.usePrice)")
                                        Spacer()
                                        Text("\(category.balance)")
                                    }
                                    
                                    Divider()
                                }
                                .padding(.horizontal, 20)
                            }
    //                    }
                        .padding(.vertical, 10)
                        
                            VStack(alignment: .leading, spacing: 10) {
                                Text("카드 혜택")
                                    .foregroundColor(.black)
                                    .bold()
                                    .font(.largeTitle)
                                    .padding(.horizontal, 10)
                                    
                                
                                VStack(alignment: .leading) {
                                    VStack(alignment: .leading, spacing: 10) {
                                        HStack {
                                            Image(systemName: "ticket")
                                            Text("연회비 지원")
                                        }
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.darkGray)
                                        
                                        Text("온라인신규회원 연회비 100% 캐시백 \n(삼성개인신용카드 신규발급 시 제공)")
                                    }
                                    .padding(.bottom, 20)
                                    
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        HStack {
                                            Image(systemName: "fork.knife")
                                            Text("외식 & 베이커리")
                                        }
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.darkGray)
                                        
                                        Text("커피전문점·배달앱·델리 중 많이 쓰는 영역 30% 자동맞춤 할인")
                                    }
                                    .padding(.bottom, 20)
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        HStack {
                                            Image(systemName: "bus")
                                            Text("교통")
                                        }
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.darkGray)
                                        
                                        Text("이동통신 10% 결제일할인")
                                        Text("전월 이용금액대별 통합(교통·이동통신·스트리밍) 월 할인한도 : 40만원 이상 10,000원 / 80만원 이상 20,000원")
                                    }
                                    .padding(.bottom, 20)
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        HStack {
                                            Image(systemName: "cart.fill")
                                            Text("쇼핑")
                                        }
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(.darkGray)
                                        
                                        Text("온라인 간편결제 3% · 1% 결제일 할인")
                                    }
                                    .padding(.bottom, 20)
                                }
                                .padding(.horizontal, 20)

                                
                            }
                            .font(.title3)
                            .foregroundColor(.gray)
                            .fontWeight(.medium)
                            
                        
                    
            }
        }
            
    }
}

struct CardDetailBenefitView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailBenefitView()
    }
}
