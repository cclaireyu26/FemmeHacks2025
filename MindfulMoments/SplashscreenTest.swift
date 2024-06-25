//
//  ContentView.swift
//  MindfulMoments
//
//  Created by Rudhmila Hoque on 6/24/24.
//

import SwiftUI

struct SplashScreenTest: View {
    var body: some View {
        VStack {
            HStack{
                Spacer()
                VStack{
//                    Image("top-beehive").resizable()
//                        .aspectRatio(contentMode: .fit).frame(width: 190, height: 190, alignment: .topLeading).ignoresSafeArea()
//                    Spacer()
                   
                }
            }
            Text("Mindful Moments").font(.custom("Cochin", fixedSize: 45)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
            Text("Mental Health and Productivity").font(.custom("Cochin", fixedSize: 25)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
            Image("splashscreen-bee").resizable()
                .aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .topLeading)
            HStack{
//                Image("bottom-beehive").resizable()
//                    .aspectRatio(contentMode: .fit).frame(width: 190, height: 190, alignment: .topLeading)
//               
//                Spacer()
            }
        }
        .padding().background(
            Image("splashscreen-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
          )
    }
}

struct SplashscreenTest: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
