//
//  BenefitSearchView.swift
//  CardMoa
//
//  Created by l1004ga on 2022/11/28.
//

import SwiftUI

struct BenefitSearchView: View {
    
    @State private var search : String = ""
    @State private var view : Int = 0
    @State var searchString : String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    TextField("검색어를 입력해주세요", text: $search)
                    Button {
                        searchString = search
                        if search == "파리바게뜨" {
                            view = 2
                        } else {
                            view = 1
                        }
                    } label: {
                        Image(systemName: "magnifyingglass").foregroundColor(.black)
                    }
                    
                }.padding().background(Color.lightGray).cornerRadius(10).padding()
                
                //검색결과가 없는 경우
                if view == 1 {
                    NoCardResultView(search: $searchString)
                        .frame(maxHeight: .infinity)
                } else if view == 2 {
                    CardResultView(search: $searchString)
                        .frame(maxHeight: .infinity)
                } else {
                    BenefitSearchInitialView()
                        .frame(maxHeight: .infinity)
                }
            }
            .navigationTitle("내가 가진 혜택 검색")
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

struct BenefitSearchView_Previews: PreviewProvider {
    static var previews: some View {
        BenefitSearchView()
    }
}
