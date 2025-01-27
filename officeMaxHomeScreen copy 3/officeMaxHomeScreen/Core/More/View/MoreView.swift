//
//  MoreView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 11/1/24.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        
        
        
        
        VStack (spacing: 32){
        
            Text("More")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
                .padding(.top,50)
        }
        
        
        
        
        Spacer()
        
        
        HStack (spacing: 50){
            
            VStack{
                Image("clipboardtext")
                Text("Task")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.red)
                
            }
            
            
            VStack{
                Image("chart1")
                Text("Stats")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.red)
            }
            
            VStack{
                Image("cup")
                Text("Goals")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.red)
            }
            
               
        }
      
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        Spacer()
        
    }
    
    
}

#Preview {
    MoreView()
}
