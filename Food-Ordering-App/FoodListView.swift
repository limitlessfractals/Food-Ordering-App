//
//  FoodListView.swift
//  Food-Ordering-App
//
//  Created by Wuqiong Fan on 9/28/23.
//

import SwiftUI

struct FoodListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                FoodListCell(appetizer: appetizer)
                
            }
            .navigationTitle("Appetizers")
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
