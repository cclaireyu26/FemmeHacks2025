//
//  ContentView.swift
//  MindfulMoments
//
//  Created by Rudhmila Hoque on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false

    var body: some View {
        ZStack {
                    if self.isActive {
                        HomeScreen()
                    } else {
                        VStack (spacing:38){
                            HStack{
                                Spacer()
                                VStack{
                                    Image("top-beehive").resizable()
                                        .aspectRatio(contentMode: .fit).frame(width: 190, height: 190, alignment: .topLeading).ignoresSafeArea()
                                    Spacer()
                                   
                                }
                            }
                            Text("Mindful Moments").font(.custom("Cochin", fixedSize: 45)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                            Text("Mental Health and Productivity").font(.custom("Cochin", fixedSize: 25)).foregroundColor(Color(red: 5 / 255, green: 10 / 255, blue: 48 / 255))
                            Image("splashscreen-bee").resizable()
                                .aspectRatio(contentMode: .fit).frame(width: 140, height: 140, alignment: .topLeading)
                            HStack{
                                Image("bottom-beehive").resizable()
                                    .aspectRatio(contentMode: .fit).frame(width: 190, height: 190, alignment: .topLeading)
                               
                                Spacer()
                            }
                        }
                        .padding()
                            
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }.background(Color(red: 254 / 255, green: 234 / 255, blue: 160 / 255))
            }
                
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
