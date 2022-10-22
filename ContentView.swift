//  ContentView.swift
//  Nort
//  Created by Данила Кардашевский on 15.10.2022.

import SwiftUI

struct ContentView: View {
   @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack (spacing: 40){
            Image("splash")
                .padding(-130)
                .padding()
            VStack{
                TextField("Email", text: $email)
                    .padding()
                    .padding(.horizontal,30)
                    .font(.title2.bold())
                    .background(Color("white"))
                    .cornerRadius(5)
                    .padding(8)
                    .padding(.horizontal,12)
                
                SecureField("Password", text: $password)
                    .padding()
                    .padding(.horizontal,30)
                    .font(.title2.bold())
                    .background(Color("white"))
                    .cornerRadius(3)
                    .padding(8)
                    .padding(.horizontal,12)
                
                Button {
                  print("Авторизация")
                } label: {
                    Text("SIGN IN")
                        .padding()
                        .padding(.horizontal,10)
                        .font(.title.bold())
                        .background(Color("white"))
                        .cornerRadius(3)
                        .padding(.horizontal,12)
                        .foregroundColor(.white)
  
                     
                }
                
                HStack{
                    
                    Button {
                      print("Forgot password?")
                        
                    } label: {
                        Text("Forgot Password?")
                            .padding()
                            .padding(.horizontal)
                            .cornerRadius(16)
                            .padding()
                            .foregroundColor(.white)
                         
                    }
                    
                    Button {
                      print("New Account")
                    } label: {
                        Text("Create New Account")
                            .padding()
                            .padding(.horizontal)
                            .cornerRadius(16)
                            .padding(8)
                     
                            .foregroundColor(.white)
                         
                    }
                }

                
            }
            .background(Color("background"))
            .cornerRadius(8)
            .padding()
            
         
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .ignoresSafeArea()
            .background(Color("background2"))
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
