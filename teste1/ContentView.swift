//
//  ContentView.swift
//  teste1
//
//  Created by Rafaella Costa on 13/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        
        NavigationView{
            
            VStack {
                
                // Header
                ZStack{
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(.black)
                    
                    
                    VStack{
                        Text("where @?")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                        Text("never miss a thing.")
                            .italic()
                            .foregroundColor(.white)
                        
                    }
                    
                }
                
                //  Login Form
                
                Form{
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    
                    // Login Button
                    
                    Button{
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            Text("Log in")
                                .foregroundColor(.white)
                                .bold()
                            
                            
                        }
                    }
                    
                    .padding(.bottom)
                    
                }
                
                
                
                
                VStack{
                    Text("New around here?")
                    NavigationLink("sign up", destination: RegisterView())
                    
                    
                        }
                    
                        .padding(.bottom, 50)
                }
                
                Spacer()
            }
            
        }
            
           
    }
    
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



