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
            
         
            

            
            VStack (spacing: 16){
                
                Text("Omni Channel Orders")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                    .frame(maxWidth: .infinity ,alignment: .top)
                    .padding(.top, 40)
                
                
                
            Spacer()
            
                
                
                
                HStack{
                    VStack (alignment: .leading, spacing: 4){
                        Text("Pick Orders")
                            .font(.headline)
                            .padding(.horizontal)
                        Text("Orders Ready: 1")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                            .padding(.horizontal)
                      
                            
                    }
                    Spacer()
                    ZStack{
                        Circle()
                            .fill(.blue)
                            .frame(width:24, height:24)
                            .padding(.horizontal)
                        Text("1")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                            .padding(.horizontal)
                        
                        
                    }
                    
                }
                
                .padding()
                Divider()
                    .background(Color.gray)
                    .frame(maxWidth: .infinity)
                Spacer()
                Spacer()
                
            }
          
            
            
            
            .toolbar{
                ToolbarItem (placement: .topBarTrailing) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Processed Orders")
                            .font(Font.headline.weight(.heavy))
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    })
                }
            }
                
            }
            
           
        
        
        
        }
        
       
    }
    
    
    


#Preview {
    PickOrderView()
}
