//
//  ContentView.swift
//  Food-Ordering-App
//
//  Created by Wuqiong Fan on 9/28/23.
//

import SwiftUI

struct FoodTabView: View {
    var body: some View {
        TabView {
            FoodListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct FoodTabView_Previews: PreviewProvider {
    static var previews: some View {
        FoodTabView()
    }
}
