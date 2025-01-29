//
//  ContentView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 10/24/24.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let sku: String
    let price: String
}


struct HomeView: View {
    
    let cards = [
        Card(imageName: "NoteBook1", title: "Black Tul Notebook", sku: "Sku: 346789", price: "$12.99"),
        Card(imageName: "NoteBook2", title: "Moleskin Journals",sku: "Sku: 465789", price: "$17.69"),
        Card(imageName: "NoteBook3", title: "Rocket Notebook", sku: " Sku: 223768", price: "$15.99"),
        Card(imageName: "NoteBook4", title: "Tul Fall Edition Notebook", sku: " Sku: 124578", price: "$10.99"),
    ]
    
    
    
    
    let chairs = [
        Card(imageName: "Chair1", title: "Winsely Chair", sku:"Sku:  776689",price: "$210.99"),
        Card(imageName: "Chair2", title: "Serta Big and Tall", sku:"Sku: 250989", price: "$250.79"),
        Card(imageName: "Chair3", title: "Ansey Chair", sku: "Sku: 300989",price:"$79.99"),
        Card(imageName: "Chair4", title: "Mezza Chair", sku: "Sku: 667894",price: "$110.99"),
    ]
    
   
    var body: some View {

        
        
        
        NavigationStack{
            ScrollView (.vertical, showsIndicators: false){
                VStack (alignment: .leading ,spacing: 16){
                    VStack{
                        Text("Welcome")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                            .padding(.top, 16)
                        
                        ScrollView(.horizontal, showsIndicators:false){
                            HStack (spacing:15){
                                Image("Videopic1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height:200)
                                Image("Videopic2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height:200)
                            }
                        }
                        
                  
                            
                    }
                   
                    Text("Deals of the week")
                        .font(.title2)
                        .foregroundColor(Color.red)
                        .bold()
                    
                    VStack (alignment: .leading){
                        Text("Notebooks")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack( spacing: 16) {
                                ForEach(cards) { card in
                                    
                                    VStack (alignment:.leading){
                                        Image(card.imageName)
                                             .resizable()
                                             .aspectRatio(contentMode: .fit)
                                             .frame(width:100 , height:100)
                                        Text(card.title)
                                            .font(.caption)
                                            .fontWeight(.medium)
                                        
                                        
                                        
                                        Text(card.sku)
                                            .font(.caption)
                                        
                                        
                                        
                                        Text(card.price)
                                            .font(.caption)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color.gray)
                                        
                                    
                                           
                                        
                                    }
                                    
                                    
                                    
                                    
                                }
                               
                            
                            }
                           
                        }
                        
                        
                        
                    }
                    
                    
                    
                    
                    
                  
                    
                    VStack (alignment: .leading){
                        Text("Chairs")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack( spacing: 16) {
                                ForEach(chairs) { chair in
                                    
                                    VStack (alignment:.leading){
                                        Image(chair.imageName)
                                             .resizable()
                                             .aspectRatio(contentMode: .fit)
                                             .frame(width:100 , height:100)
                                        Text(chair.title)
                                            .font(.caption)
                                            .fontWeight(.medium)
                                        
                                      
                                        
                                        Text(chair.sku)
                                            .font(.caption)
                                        
                                        
                                        Text(chair.price)
                                            .font(.caption)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color.gray)
                                           
                                        
                                    }
                                    
                                    
                                    
                                    
                                }
                               
                            
                            }
                           
                        }
                        
                        
                        
                    }
                    
                    
                    
                    VStack (alignment: .leading) {
                        Text("Desk")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
            
                        Image("Desk1")
                            .resizable()
                            .scaledToFit()
                        Text("Real Space Computer Desk")
                            .font(.caption)
                        Text("$200.00 CLEARANCE DEAL")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                    }
                    
                    
                    VStack (alignment: .leading) {
                        Text("Coupons of the Week")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.red)
                        
                            Image("Coupon1")
                                .resizable()
                                .scaledToFit()
                               
                    }
                    
                    
                    
                    
                    
                }
                
          
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            .toolbar{
                ToolbarItem {
                    NavigationLink(destination: StoreLocationsView()) {
                        Image(systemName: "mappin.and.ellipse")
                            .foregroundColor(Color.red)
                            .padding(.horizontal)
                    }
                }
               
                ToolbarItem (placement: .topBarLeading) {
                    Image(systemName: "line.horizontal.3")
                        .foregroundColor(Color.red)
                }
                ToolbarItem (placement: .topBarTrailing) {
                    Image(systemName: "phone.fill" )
                        .foregroundColor(Color.red)
                }
            }
            
            
            
       
            
            
            
            
            
            
        }
        
        
        
        
        .padding()
    }
    
    
    
}












#Preview {
    HomeView()
}




