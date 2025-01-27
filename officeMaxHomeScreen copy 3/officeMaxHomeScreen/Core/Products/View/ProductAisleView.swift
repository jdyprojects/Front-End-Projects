//
//  ProductAisleView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 1/14/25.
//

import SwiftUI

struct ProductAisleView: View {
    @Environment(\.dismiss) private var dismiss
    
    let products = [
        Product(name: "Logitech 320 Mouse", price: "$10.99", image: "Mouse1"),
        Product(name: "Logitech Flex mouse", price: "$20.99", image: "Mouse2"),
        Product(name: "Logitech 330 mouse", price: "$210.99", image: "Mouse3")
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            // Title
            Text("Products")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
            
            // Products List
            ScrollView {
                VStack(spacing: 0) {
                    // First product as NavigationLink
                    NavigationLink(destination: ProductDetailView()) {
                        ProductRow(product: products[0])
                    }
                    Divider()
                        .padding(.horizontal, 20)
                    
                    // Rest of products as static views
                    ForEach(products.dropFirst()) { product in
                        ProductRow(product: product)
                        Divider()
                            .padding(.horizontal, 20)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: { dismiss() }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.red)
                }
            }
        }
    }
}

// Product Row View
struct ProductRow: View {
    let product: Product
    
    var body: some View {
        HStack(spacing: 16) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding(8)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(product.name)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(product.price)
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
            
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
    }
}

// Product Model
struct Product: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let image: String
}

#Preview {
    NavigationView {
        ProductAisleView()
    }
}
