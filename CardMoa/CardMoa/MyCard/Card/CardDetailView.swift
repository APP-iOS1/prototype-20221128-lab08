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
        VStack(alignment: .leading, spacing: 10) {
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
        .font(.title3)
        .foregroundColor(.gray)
        .fontWeight(.medium)
        .padding(15)
        .navigationTitle("카드 상세 혜택")
        .toolbarColorScheme(.dark, for: .navigationBar, .tabBar)
        .toolbarBackground(
            Color.mainColor,
            for: .navigationBar, .tabBar
        )
        .toolbarBackground(.visible, for: .navigationBar, .tabBar)
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView()
    }
}
