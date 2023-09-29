//
//  FoodListView.swift
//  Food-Ordering-App
//
//  Created by Wuqiong Fan on 9/28/23.
//

import SwiftUI

struct FoodListView: View {
    
    @State private var appetizers: [Appetizer] = []
    
    var body: some View {
        NavigationView {
            List(appetizers) { appetizer in
                FoodListCell(appetizer: appetizer)
                
            }
            .navigationTitle("Appetizers")
        }
        .onAppear {
            getAppetizers()
        }
    }
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct FoodListView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
