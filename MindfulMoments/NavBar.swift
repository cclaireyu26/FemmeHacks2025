//
//  NavBar.swift
//  MindfulMoments
//
//  Created by Student on 6/26/24.
//

import SwiftUI

struct NavBar: View {
    @State private var selectedTab="home"
    var body: some View {
        TabView{
          HomeScreenLoggedIn()
            .tabItem(){
                Image(systemName: "house.fill")
                Text("Home")
                }
                 Checklist()
                    .tabItem(){
                        Image(systemName: "checkmark.square.fill")
                        Text("Checklist")
                    }
                  NutritionChecker()
                    .tabItem(){
                        Image(systemName: "star.fill")
                     
                        Text("Nutrition Checker")
                    }
                    Photos()
                    .tabItem(){
                        Image(systemName: "person.circle.fill")
                        Text("Capture")
                    }
          
        }
     
            
            //EDITED VERSION (but probably the above version is better and should work with that)
            /*
             TabView(selection:$selectedTab){
             Text("Home content")
             //{
             //    selectedTab="home"
             
             // }
             .tabItem{
             Label("Home",systemImage: "house.fill")
             }.tag("home")
             
             Text("checklist content")
             .tabItem{
             Label("Checklist",systemImage: "checkmark.square.fill")
             
             }.tag("checklist")
             Text("nutrition content")
             .tabItem{
             Label("Nutrition checker",systemImage: "star.fill")
             
             }.tag("nutrition")
             Text("profile content")
             .tabItem{
             Label("Profile",systemImage: "person.circle.fill")
             
             }.tag("stats")
             
             }*/
        }
    }


#Preview {
    NavBar()
}
