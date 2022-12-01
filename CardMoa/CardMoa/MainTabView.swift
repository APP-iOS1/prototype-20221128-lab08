//
//  ContentView.swift
//  CardMoa
//
//  Created by danny.ho_2PC on 2022/11/28.
//

import SwiftUI

struct MainTabView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.white)
    }
    
    var body: some View {
        
        //NavigationStack{
        TabView {
            MyCardView().tabItem {
                Image(systemName: "creditcard")
                Text("나의 카드")
            }.tag(1)
            MapView().tabItem {
                Image(systemName: "map")
                Text("내 주변 혜택")
            }.tag(2)
            
            BenefitSearchView().tabItem {
                Image(systemName: "magnifyingglass")
                Text("혜택 검색")
            }.tag(3)
            CardRecommendView().tabItem {
                Image(systemName: "list.dash.header.rectangle")
                Text("카드 추천")
            }.tag(4)
            ProfileView().tabItem {
                Image(systemName: "person.crop.rectangle")
                Text("나의 소비")
            }.tag(5)
        }.onAppear() {
            UITabBar.appearance().barTintColor = UIColor(Color.white)
        }
        
        //            .toolbarColorScheme(.dark, for: .navigationBar, .tabBar)
        //            .toolbarBackground(
        //                Color.mainColor,
        //                for: .navigationBar, .tabBar
        //            )
        //            .toolbarBackground(.visible, for: .navigationBar, .tabBar)
        //} // NavigationStack
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
