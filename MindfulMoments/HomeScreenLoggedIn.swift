//
//  HomeScreenLoggedIn.swift
//  MindfulMoments
//
//  Created by Student on 6/26/24.
//

import SwiftUI

struct HomeScreenLoggedIn: View {
    
//    private let colors: [Color]=[Color(red: 254/255,green: 234/255,blue: 160/255),Color(red: 208/255,green: 240/255,blue: 235/255),Color(red: 114/255,green: 161/255,blue: 229/255),Color(red: 254/255,green: 234/255,blue: 207/255)]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))]
    @State private var selectedTab="home"
    @State var username=""
    
    var body: some View {
        NavigationView{
            VStack{
                Login(enteredUsername: $username)
                ScrollView{
                    Text("Welcome \(username)!").font(.custom("Cochin", fixedSize: 40)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255)).padding()
                    Spacer()
                    Spacer()
                    
                    HStack{
                        Text("Your stats").font(.custom("Cochin", fixedSize: 35)).padding()
                        Spacer()
                        NavigationLink(destination:Stats()){
                            Text("View all ▸").padding().font(.custom("Cochin", fixedSize: 25))
                        }
                    }//hstack for stats and view all
                    HStack{
                        NavigationLink(destination: Stats()){LazyVGrid(columns:adaptiveColumns, spacing: 30)
                            {
                                ZStack{
                                    Rectangle().frame(width:170,height:85).foregroundColor(Color(red: 114/255, green: 161/255, blue: 229/255)).cornerRadius(25)
                                    Text("X day streak").foregroundColor(.white).font(.custom("Cochin", fixedSize: 30))
                                }.shadow(radius:6)
                            }//nav link 1
                            
                            NavigationLink(destination: Stats()){LazyVGrid(columns:adaptiveColumns, spacing: 30)
                                {
                                    ZStack{
                                        Rectangle().frame(width:170,height:85).foregroundColor(Color(red: 114/255, green: 161/255, blue: 229/255)).cornerRadius(25)
                                        Text("X photos shared").foregroundColor(.white).font(.custom("Cochin", fixedSize: 30))
                                    }.shadow(radius:6)
                                }//x photos
                            }//lazyvgrid
                        }
                        
                    }//hstack
                    VStack{
                        HStack{Text("Check in on your Bee buddy").font(.custom("Cochin", fixedSize: 32)).padding()
                            Spacer()}
                        ZStack{
                            Color(red: 114/255, green: 161/255, blue: 229/255).cornerRadius(15)
                                .ignoresSafeArea()
                            VStack(alignment:.leading, spacing: 20.0){
                                Image("splashscreen-bee")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit).frame(width:90,height:90)
                                    .cornerRadius(15)
                                Text("BeeBee")
                                
                                Text("BeeBee the Bee is here to provide you the virtual emotional support that you need. ")
                                
                                
                            }//vstack for bee buddy
                            .padding()
                            .background(Rectangle().foregroundColor(.white))
                            .cornerRadius(15)
                            .shadow(radius:15)
                            .padding()
                        }//zstack
                        
                        HStack{
                            Text("Explore").font(.custom("Cochin", fixedSize: 35)).padding()
                            Spacer()
                        }
                        NavigationLink(destination: Checklist()){LazyVGrid(columns:adaptiveColumns, spacing: 30)
                            {
                                ZStack{
                                    Rectangle().frame(width:170,height:85).foregroundColor(Color(red: 114/255, green: 161/255, blue: 229/255)).cornerRadius(25)
                                    Text("Checklist").foregroundColor(.white).font(.custom("Cochin", fixedSize: 30))
                                }.shadow(radius:6)
                            }
                            
                            NavigationLink(destination: NutritionChecker()){LazyVGrid(columns:adaptiveColumns, spacing: 30)
                                {
                                    ZStack{
                                        Rectangle().frame(width:170,height:85).foregroundColor(Color(red: 114/255, green: 161/255, blue: 229/255)).cornerRadius(25)
                                        Text("Nutritional Checker").foregroundColor(.white).font(.custom("Cochin", fixedSize: 30))
                                    }.shadow(radius:6)
                                }
                            }//lazyvgrid2
                        }//lazyvgrid1
                        
                        NavigationLink(destination: Photos()){LazyVGrid(columns:adaptiveColumns, spacing: 30)
                            {
                                ZStack{
                                    Rectangle().frame(width:170,height:85).foregroundColor(Color(red: 114/255, green: 161/255, blue: 229/255)).cornerRadius(25)
                                    Text("Capture").foregroundColor(.white).font(.custom("Cochin", fixedSize: 30))
                                }.shadow(radius:6)
                            }
                            NavigationLink(destination: Photos()){LazyVGrid(columns:adaptiveColumns, spacing: 30)
                                {
                                    ZStack{
                                        Rectangle().frame(width:170,height:85).foregroundColor(Color(red: 114/255, green: 161/255, blue: 229/255)).cornerRadius(25)
                                        Text("Photo Album").foregroundColor(.white).font(.custom("Cochin", fixedSize: 30))
                                    }.shadow(radius:6)
                                }
                            }
                        }
                        
                    }.padding()
                        .navigationTitle("Home")
                   
                        
                }//scrollview
            }   .background(Color(red: 254/255,green: 234/255,blue: 160/255).opacity(0.55))//vstack
            
//            .toolbar {
//                ToolbarItemGroup(placement: .status) {
//                    NavigationLink(destination: NavBar()) {
//                        
//                    }
//                }
//            }
            
            
        }//navview.
     
    
       // NavBar()
        
//        TabView(selection:$selectedTab){
//            homeScreenLoggedIn
//            //{
//            //    selectedTab="home"
//            
//           // }
//                .tabItem{
//                Label("Home",systemImage: "house.fill")
//            }.tag("home")
//            
//            Text("checklist content")
//                .tabItem{
//                    Label("Checklist",systemImage: "checkmark.square.fill")
//                    
//                }.tag("checklist")
//            Text("nutrition content")
//                .tabItem{
//                    Label("Nutrition checker",systemImage: "star.fill")
//                    
//                }.tag("nutrition")
//            Text("profile content")
//                .tabItem{
//                    Label("Profile",systemImage: "person.circle.fill")
//                    
//                }.tag("stats")
//            
//        }
    }//body
  
}


#Preview {
    HomeScreenLoggedIn()
}
