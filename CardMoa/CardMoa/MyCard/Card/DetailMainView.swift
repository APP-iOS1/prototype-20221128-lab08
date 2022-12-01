//
//  DetailMainView.swift
//  CardMoa
//
//  Created by do hee kim on 2022/12/01.
//

import SwiftUI
import SegmentedPicker

struct DetailMainView: View {
    let titles: [String] = ["실적", "혜택", "내역"]
    @State var selectedIndex: Int?
    
    var body: some View {
        
        VStack {
            SegmentedPicker(
                titles,
                selectedIndex: Binding(
                    get: { selectedIndex },
                    set: { selectedIndex = $0 }),
                selectionAlignment: .bottom,
                content: { item, isSelected in
                    Text(item)
                        .foregroundColor(isSelected ? Color.black : Color.gray )
                        .padding(.horizontal, 50)
                        .padding(.vertical, 15)
                },
                selection: {
                    VStack(spacing: 0) {
                        Spacer()
                        Color.black.frame(width: 90, height: 1)
                    }
                })
            .onAppear {
                selectedIndex = 0
            }
            .animation(.easeInOut(duration: 0.3))
            .frame(width: UIScreen.main.bounds.width)
            switch selectedIndex {
            case 0:
                CardDetailView()
            case 1:
                CardDetailBenefitView()
            default: // case 2
                CardDetailHistoryView()
            }
            
            Spacer()
            
                .navigationTitle("카드 상세 혜택")
                .toolbarColorScheme(.dark, for: .navigationBar, .tabBar)
                .toolbarBackground(
                    Color.mainColor,
                    for: .navigationBar, .tabBar
                )
                .toolbarBackground(.visible, for: .navigationBar, .tabBar)
            
        } // VStack
    }
}

struct DetailMainView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMainView()
    }
}
