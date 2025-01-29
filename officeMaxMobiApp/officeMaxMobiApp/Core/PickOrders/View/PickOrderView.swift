//
//  PickOrderView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 11/1/24.
//

import SwiftUI
struct PickOrderView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 0) {
                
                HStack {
                    Spacer()
                    NavigationLink(destination: PickedOrdersView()) {
                        Text("Processed orders")
                            .font(.title3)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 16)
                
            
                Text("Omni Channel Orders")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity)
                    .padding(.top, 20)
                
                
                NavigationLink(destination: OrdersListView()) {
                    VStack(spacing: 0) {
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Pick Orders")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Text("Orders Ready: 1")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            ZStack {
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 24, height: 24)
                                Text("1")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                        .padding()
                        
                        Divider()
                    }
                }
                .padding(.top, 100) 
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    PickOrderView()
}
