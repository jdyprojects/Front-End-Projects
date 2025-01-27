//
//  PickedOrdersView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 1/13/25.
//

import SwiftUI

struct PickedOrdersView: View {
    @Environment(\.dismiss) private var dismiss
    
    let orders = [
        "475868950403- 001",
        "374657686958- 001",
        "384657839390- 001",
        "229384765267- 001",
        "756769384756- 001",
        "374652637899- 001",
        "989890987736- 001"
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            // Title
            Text("Processed Orders")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .padding(.top, 20)
                .padding(.bottom, 24)
            
            // Orders List
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(orders, id: \.self) { orderNumber in
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Pick Orders")
                                .font(.headline)
                            Text("Orders Number : \(orderNumber)")
                                .font(.subheadline)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                        .padding(.horizontal, 20)
                        
                        Divider()
                    }
                }
            }
            
            Spacer()
            
            // Print Button
            Button(action: {
                // Print action
            }) {
                Text("Print")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.red)
                    .cornerRadius(25)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 30)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.red)
                        .imageScale(.large)
                }
            }
        }
    }
}



#Preview {
    PickedOrdersView()
}
