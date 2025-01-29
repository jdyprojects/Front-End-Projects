//
//  SearchView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 11/1/24.
//

import SwiftUI

struct SearchView: View {
    @State private var Search = ""
    @State private var showProductAisle = false
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Spacer()
            Spacer()
            Spacer()
            
            VStack {
                Text("Products")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
            }
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search", text: $Search)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(8)
            }
            .padding(.horizontal, 10)
            .background(Color(.systemGray6))
            .cornerRadius(27)
            .padding()
            
            // First image as NavigationLink
            NavigationLink(destination: ProductAisleView()) {
                Image("Tech1")
                    .cornerRadius(15)
            }
            
            // Rest of the images remain the same
            Image("Office1")
                .cornerRadius(15)
            
            Image("Furniture1")
                .cornerRadius(15)
            
            Image("Elec1")
                .cornerRadius(15)
            
            Image("Breakroom1")
                .cornerRadius(15)
            
            Image("paper1")
                .cornerRadius(15)
            
            Image("Cleaning1")
                .cornerRadius(15)
            
            Image("Print1")
                .cornerRadius(15)
            
            Image("School1")
                .cornerRadius(15)
            
            Image("Ink1")
                .cornerRadius(15)
            
            Image("Service1")
                .cornerRadius(15)
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationStack {  // Wrap preview in NavigationStack
        SearchView()
    }
}
