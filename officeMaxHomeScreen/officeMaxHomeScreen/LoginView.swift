//
//  LoginView.swift
//  officeMaxHomeScreen
//
//  Created by JD Yarborough on 11/3/24.
//

import SwiftUI

struct LoginView: View {
    @State private var usernumber: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn : Bool = false
    @State private var showError : Bool = false
    
    
    var body: some View {
        NavigationStack{
            
            
            
            
            VStack{
                
                
                
                
                Spacer()
                
                
                
                
                Image("logo officemax")
                    .padding(.bottom, 40)
                
                
                TextField("Usernumber", text: $usernumber)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(27)
                    .keyboardType(.numberPad)
                
                
                SecureField ("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(27)
                    .padding(.top,10)
                
              
                Button(action:{
                    
                    handleLogin()
                    
                }) {
                    Text("Login")
                        .frame(maxWidth:.infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(27)
                        .padding(.top,20)
                    
                }
                
                Text("Store Location: 06203")
                    .font(.body)
                    .fontWeight(.bold)
                    .padding()
            
                
                
                
                
                Spacer()
                
                
                
                
                
                
                if showError {
                    Text("Invaild usernumber or password")
                        .foregroundColor(.red)
                        .padding(.top,10)
                    
                }
                
                
                
                
                
                Spacer()
                
                
                
                
            }
            
            .padding()
            .navigationBarBackButtonHidden(true)
            .navigationDestination(isPresented: $isLoggedIn) {
                
                ContentView()
            }
            
            
            
            

            
            
            
        }
    }
    
    
    func handleLogin() {
        
        if usernumber == "123" && password == "password" { isLoggedIn = true
            
        } else {
            showError = true
        }
       
    }
    
    
    
}

#Preview {
    LoginView()
}
