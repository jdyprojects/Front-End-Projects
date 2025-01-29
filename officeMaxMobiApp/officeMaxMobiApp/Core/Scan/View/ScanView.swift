//
//  ScanView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 11/1/24.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        
        
        
        Text("Sku Number/Putaway Location")
            .font(.title2)
            .fontWeight(.medium)
            .foregroundColor(Color.gray)
        
        
        
        
            Divider()
                .background(Color.gray)
                .frame(maxWidth: .infinity)
        
        VStack{
            Button("Continue") {
                
            }
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.red)
            .cornerRadius(27)
            .padding()
            .padding()
           
            
       
        }
        
    }
}

#Preview {
    ScanView()
}
