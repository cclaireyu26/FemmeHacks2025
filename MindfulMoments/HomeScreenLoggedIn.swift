//
//  HomeScreenLoggedIn.swift
//  MindfulMoments
//
//  Created by Student on 6/26/24.
//

import SwiftUI

struct HomeScreenLoggedIn: View {
    
    private let colors: [Color]=[Color(red: 254/255,green: 234/255,blue: 160/255),Color(red: 208/255,green: 240/255,blue: 235/255),Color(red: 114/255,green: 161/255,blue: 229/255),Color(red: 254/255,green: 234/255,blue: 207/255)]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))]
    
    var body: some View {
        VStack{
            NavigationView{
                
                ScrollView{
                    
                    Text("Welcome NAME!").font(.custom("Cochin", fixedSize: 40)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).padding()
                    Spacer()
                    Spacer()
                    
                    HStack{
                        Text("Your stats").font(.custom("Cochin", fixedSize: 35)).padding()
                        Spacer()
                        NavigationLink(destination:Stats()){
                            Text("View all ▸").padding().font(.custom("Cochin", fixedSize: 25))
                        }
                    }
                    HStack{
                        NavigationLink(destination: Stats()){LazyVGrid(columns:adaptiveColumns, spacing: 30)
                            {
                                ZStack{
                                    Rectangle().frame(width:170,height:85).foregroundColor(Color(red: 114/255, green: 161/255, blue: 229/255)).cornerRadius(25)
                                    Text("X day streak").foregroundColor(.white).font(.custom("Cochin", fixedSize: 30))
                                }}
                            NavigationLink(destination: Stats()){LazyVGrid(columns:adaptiveColumns, spacing: 30)
                                {
                                    ZStack{
                                        Rectangle().frame(width:170,height:85).foregroundColor(Color(red: 114/255, green: 161/255, blue: 229/255)).cornerRadius(25)
                                        Text("X photos shared").foregroundColor(.white).font(.custom("Cochin", fixedSize: 30))
                                    }
                                }
                            }
                        }
                    }
                    VStack{Text("hello")
                        
                        
                    }.padding()
                        .navigationTitle("Home")
                    
                    
                }
            }
            
        }
    }
}

#Preview {
    HomeScreenLoggedIn()
}
