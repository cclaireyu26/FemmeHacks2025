//
//  Signup.swift
//  MindfulMoments
//
//  Created by Student on 6/25/24.
//

import SwiftUI

struct Login: View {

    //@State var username=""
    @Binding var enteredUsername: String
    @State var password=""

    @State private var navigateToHome=false
    @State private var hideLoginView=true

    var body: some View {
        
        
        NavigationStack{
            VStack(spacing:30){
                Text("Mindful Moments").font(.custom("Cochin", fixedSize: 35)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).bold()
                Text("Login to an existing account.\n").font(.custom("Cochin", fixedSize: 25)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                
                Text("Username").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                TextField("user123", text:$enteredUsername).multilineTextAlignment(.center).font(.title3)
                    .border(Color.black, width:2).textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10.0).overlay(RoundedRectangle(cornerRadius:10.0).stroke(.black,lineWidth:2)).padding()
                Text("Password").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                TextField("*****", text:$password).multilineTextAlignment(.center).font(.title3)
                    .border(Color.black, width:2).textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10.0).overlay(RoundedRectangle(cornerRadius:10.0).stroke(.black,lineWidth:2)).padding()
                VStack{
                    Text("Forgot your password?").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                    NavigationLink(destination: ResetPassword()){
                        Text("Reset password").font(.custom("Cochin", fixedSize: 20))
                    }
                }
                
                
              
                NavigationLink(destination: NavBar()  .navigationBarBackButtonHidden(true)){
                    Text("Login").padding()
                    
                }.onTapGesture{
                    hideLoginView.toggle()
                }.font(.custom("Cochin", fixedSize: 18)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).background(Color(red: 254 / 255, green: 234 / 255, blue: 160 / 255)).cornerRadius(15.0).shadow(radius:15)
                  
            }.opacity(hideLoginView ? 1 : 0)
            
                }
    }
        }
    
    


#Preview {
    Login(enteredUsername: .constant("test"))
}

