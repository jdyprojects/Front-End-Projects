//
//  ProductAisleView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 1/13/25.
//

import SwiftUI

struct ProductDetailView: View {
    @State private var showInStockAlert = false
    @Environment(\.dismiss) private var dismiss
    
    let sections = ["Description", "Scan Location", "Comparable Products", "Store Location", "More"]
    
    // Sample related products data
    let relatedProducts = [
        RelatedProduct(name: "Logitech 235 Keyboard", price: "$50.99", image: "keyboard1"),
        RelatedProduct(name: "Logitech 759 Keyboard", price: "$21.99", image: "Keyboard2"),
        RelatedProduct(name: "Logitech 235 Keyboard", price: "$90.99", image: "Keyboard3"),
        RelatedProduct(name: "Logitech 235 Keyboard", price: "$90.99", image: "Keyboard4")
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 0) {
                // Title
                Text("Logitech 320 Mouse")
                    .font(.title2)
                    .foregroundColor(.red)
                    .fontWeight(.bold)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 16)
                
                // Product Image
                Image("Mouse1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 20)
                   
                
                // Product Info
                HStack {
                    HStack {
                        Text("Sku: 857689")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    Text("On Hand: 7")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 20)
                .padding(.top, 12)
                
                HStack {
                    HStack {
                        Text("Sale:")
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                        Text("$10.99")
                            .fontWeight(.semibold)
                    }
                    .font(.subheadline)
                    Spacer()
                    Text("Qty: 3")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 20)
                .padding(.top, 4)
                
                // Sections
                VStack(spacing: 0) {
                    ForEach(sections, id: \.self) { section in
                        Button(action: {}) {
                            HStack {
                                Text(section)
                                    .foregroundColor(.black)
                                    .font(.body)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            .padding(.vertical, 12)
                            .padding(.horizontal, 16)
                        }
                        if section != sections.last {
                            Divider()
                                .padding(.horizontal, 16)
                        }
                    }
                }
                .padding(.vertical, 8)
                .background(Color(uiColor: .systemGray6))
                .cornerRadius(12)
                .padding(.horizontal, 16)
                .padding(.top, 20)
                
                // Related Products
                VStack(alignment: .leading, spacing: 16) {
                    Text("Products you may like")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .padding(.horizontal, 20)
                        .padding(.top, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(relatedProducts) { product in
                                relatedProductCard(product)
                            }
                        }
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
                   ToolbarItem(placement: .navigationBarTrailing) {
                       Button(action: {
                           showInStockAlert = true
                       }) {
                           Text("Warehouse")
                               .foregroundColor(.blue)
                               .fontWeight(.bold)
                               .font(.title2)
                       }
                   }
               }
               .alert(isPresented: $showInStockAlert) {
                   Alert(
                       title: Text("Warehouse QTY: 15"),
                       message: Text("Would you like Order this product for your customer?"),
                       primaryButton: .default(Text("Yes")) {
                           // Navigate to similar products page
                       },
                       secondaryButton: .cancel(Text("No"))
                   )
               }
           }
       }
            
            
            
            
            
            
       

    
    // Related product card view as a private function
    private func relatedProductCard(_ product: RelatedProduct) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            Text(product.name)
                .font(.subheadline)
            Text(product.price)
                .font(.subheadline)
        }
        .frame(width: 120)
    }


// Model for related products
struct RelatedProduct: Identifiable {
    let id = UUID()
    let name: String
    let price: String
    let image: String
}

#Preview {
    NavigationView {
        ProductDetailView()
    }
}
