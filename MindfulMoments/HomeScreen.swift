//
//  HomeScreen.swift
//  MindfulMoments
//
//  Created by Student on 6/25/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack{
            VStack(spacing:36) {
                HStack{
                    VStack(spacing:20){
                        VStack{
                            Text("Mindful").font(.custom("Cochin", fixedSize: 30)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).bold()
                            Text("Moments").font(.custom("Cochin", fixedSize: 30)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).bold()
                        }
                        
                        VStack{
                            Text("Mental Health").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                            Text("and Productivity").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                        }
                        
                    }
                    VStack{
                        
                        
                        Image("top-beehive").resizable()
                            .aspectRatio(contentMode: .fit).frame(width: 190, height: 190, alignment: .topLeading).ignoresSafeArea()
                        Image("splashscreen-bee").resizable()
                            .aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .topLeading)
                        
                        
                    }
                }
                Text("Welcome to Mindful Moments!").font(.custom("Cochin", fixedSize: 25)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                HStack{
                    VStack{
                        Text("Returning to MM?").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                        NavigationLink(destination: Login()){
                            Text("Login").font(.custom("Cochin", fixedSize: 20))
                        }
                    }
                    VStack{
                        Text("New to MM?").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                        NavigationLink(destination: Signup()){
                            Text("Create new account").font(.custom("Cochin", fixedSize: 20))
                        }
                    }
                    
                    
                }
                VStack{
                    Text("Forgot your password?").font(.custom("Cochin", fixedSize: 20)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                    NavigationLink(destination: ResetPassword()){
                        Text("Reset password").font(.custom("Cochin", fixedSize: 20))
                    }
                }
                HStack{
                    Image("bottom-beehive").resizable()
                        .aspectRatio(contentMode: .fit).frame(width: 190, height: 190, alignment: .topLeading)
                    
                    Spacer()
                }
            }
            .padding()
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    HomeScreen()
}
