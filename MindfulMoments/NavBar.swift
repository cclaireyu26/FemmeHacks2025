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
//                    Image("home-icon").resizable()
//                        .aspectRatio(contentMode: .fit).frame(width: 10, height: 10)
                    Text("Home")
                }
            Checklist()
                .tabItem(){
                    Image(systemName: "checkmark.square.fill")
//                    Image("checklist-icon").resizable()
//                        .aspectRatio(contentMode: .fit).frame(width: 10, height: 10)
                    Text("Checklist")
                }
            NutritionChecker()
                .tabItem(){
                    Image(systemName: "star.fill")
//                    Image("nutrition-icon")
                    Text("Nutrition Checker")
                }
            StatsProfile()
                .tabItem(){
                    Image(systemName: "person.circle.fill")
//                    Image("profile-icon")
                    Text("Profile")
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
