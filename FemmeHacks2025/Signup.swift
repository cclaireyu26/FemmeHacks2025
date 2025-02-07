//
//  Signup.swift
//  MindfulMoments
//
//  Created by Student on 6/25/24.
//

import SwiftUI

struct Signup: View {
    @State var firstName=""
    @State var lastName=""
    @State var username=""
    @State var password=""
    @State var recoveryWord=""
    @State private var showAlert = false
    @State private var navigateToHome=false

    var body: some View {
        
        
        NavigationStack{
            VStack{
                Text("Mindful Moments").font(.custom("Cochin", fixedSize: 35)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).bold()
                Text("Create a new account\n").font(.custom("Cochin", fixedSize: 25)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                Text("First name").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                TextField("Jane", text:$firstName).multilineTextAlignment(.center).font(.title3)
                    .border(Color.black, width:2).textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10.0).overlay(RoundedRectangle(cornerRadius:10.0).stroke(.black,lineWidth:2)).padding()
                Text("Last name").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                TextField("Doe", text:$lastName).multilineTextAlignment(.center).font(.title3)
                    .border(Color.black, width:2).textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10.0).overlay(RoundedRectangle(cornerRadius:10.0).stroke(.black,lineWidth:2)).padding()
                Text("Username").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                TextField("user123", text:$username).multilineTextAlignment(.center).font(.title3)
                    .border(Color.black, width:2).textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10.0).overlay(RoundedRectangle(cornerRadius:10.0).stroke(.black,lineWidth:2)).padding()
                Text("Password").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                TextField("*****", text:$password).multilineTextAlignment(.center).font(.title3)
                    .border(Color.black, width:2).textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10.0).overlay(RoundedRectangle(cornerRadius:10.0).stroke(.black,lineWidth:2)).padding()
                Text("Recovery word").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                Text("If you forget your password, we'll ask you to input your unique recovery word.").font(.custom("Cochin", fixedSize: 17)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).padding()
                TextField("elephant", text:$recoveryWord).multilineTextAlignment(.center).font(.title3)
                    .border(Color.black, width:2).textFieldStyle(RoundedBorderTextFieldStyle()).cornerRadius(10.0).overlay(RoundedRectangle(cornerRadius:10.0).stroke(.black,lineWidth:2)).padding()
                NavigationLink(destination: HomeScreen(), isActive: $navigateToHome) {
                                }
                NavigationLink(destination: HomeScreen()){
                    Text("Create new account")
                        .simultaneousGesture(TapGesture().onEnded {
                                            showAlert = true
                        }).padding()
                                        .alert(isPresented: $showAlert) {
//                                            Alert(
//                                                title: Text("Your account has been created."),
//                                                message: Text("Go ahead and login now."),
//                                                dismissButton: .default(NavigationLink(destination:HomeScreen()){Text("OK")})
//                                            ).alert(isPresented: $showAlert) {
                        Alert(
                        title: Text("Your account has been created!"),
                        message: Text("Go ahead and login now!"),
                        dismissButton: .default(Text("OK")) {
                            navigateToHome = true
                        }
                    )
                        }
                }.font(.custom("Cochin", fixedSize: 18)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).background(Color(red: 254 / 255, green: 234 / 255, blue: 160 / 255)).cornerRadius(15.0).shadow(radius:15)
            }
        }
    }
    }


#Preview {
    Signup()
}
