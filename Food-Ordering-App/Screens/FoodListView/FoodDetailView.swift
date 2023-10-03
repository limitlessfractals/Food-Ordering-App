//
//  FoodDetailView.swift
//  Food-Ordering-App
//
//  Created by Wuqiong Fan on 10/2/23.
//

import SwiftUI

struct FoodDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool 
    
    var body: some View {
        ZStack {
            VStack {
                AppetizerRemoteImage(urlString: appetizer.imageURL)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
                
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                
                Text(appetizer.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .italic()
                    .padding()
                
                HStack (spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .font(.caption)
                            .fontWeight(.bold)
                        
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .font(.caption)
                            .fontWeight(.bold)
                        
                        Text("\(appetizer.carbs) g")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .font(.caption)
                            .fontWeight(.bold)
                        
                        Text("\(appetizer.protein) g")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(width: 220)
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.capsule)
                .tint(.brandPrimary)
                .padding(.bottom, 30)
            }
            .frame(width: 300, height: 550)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 40)
            .overlay(Button {
                isShowingDetail = false 
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .opacity(0.6)
                    
                    Image(systemName: "xmark")
                        .imageScale(.medium)
                        .frame(width: 44, height: 44)
                        .foregroundColor(.brandPrimary)
                }
            }, alignment: .topTrailing)
        }
    }
}

struct FoodDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetailView(appetizer: MockData.sampleAppetizer,
                       isShowingDetail: .constant(true))
    }
}
