//
//  SearchView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 11/1/24.
//

import SwiftUI

struct SearchView: View {
    @State private var Search = ""
    var body: some View {
    
        
        ScrollView (.vertical, showsIndicators: false){
            
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
               
            
            Image("Tech1")
                .cornerRadius(15)
                
            
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
    SearchView()
}
