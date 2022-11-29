//
//  BenefitSearchView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/28.
//

import SwiftUI

struct BenefitSearchView: View {
    
    @State private var search : String = ""
    @State private var view : Int = 0
    
    var body: some View {
        VStack{
            HStack{
                TextField("검색어를 입력해주세요", text: $search)
                Button {
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
                NoCardResultView(search: $search)
                    .frame(maxHeight: .infinity)
            } else if view == 2 {
                CardResultView(search: $search)
                    .frame(maxHeight: .infinity)
            } else {
                BenefitSearchInitialView()
                    .frame(maxHeight: .infinity)
            }
        }
    }
}

struct BenefitSearchView_Previews: PreviewProvider {
    static var previews: some View {
        BenefitSearchView()
    }
}
