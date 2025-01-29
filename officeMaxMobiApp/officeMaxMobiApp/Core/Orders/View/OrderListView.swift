//
//  OrderListView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 1/13/25.
//

import SwiftUI

struct OrdersListView: View {
    @State private var showOutOfStockAlert = false
    
    var body: some View {
        VStack {
            Text("Orders")
                .foregroundColor(.red)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                showOutOfStockAlert = true
            }) {
                HStack {
                    Image("dell-TxXuh_hAFd8-unsplash") // Make sure to add this image to your assets
                        .resizable()
                        .frame(width: 100, height: 80)
                       
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Sku : 859689")
                            .font(.subheadline)
                        Text("Dell 15")
                            .font(.headline)
                        Text("$219.99")
                            .font(.subheadline)
                    }
                    .padding()
                    Spacer()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
            }
            .buttonStyle(PlainButtonStyle())
            Divider()
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(false)
        .alert(isPresented: $showOutOfStockAlert) {
            Alert(
                title: Text("The product is out of stock."),
                message: Text("Would you like to send a similar product to the customer?"),
                primaryButton: .default(Text("Yes")) {
                    // Navigate to similar products page
                },
                secondaryButton: .cancel(Text("No"))
            )
        }
    }
}

#Preview {
    OrdersListView()
}
