//
//  NutritionChecker.swift
//  MindfulMoments
//
//  Created by Student on 6/26/24.
//
//
//  Nutrition Rater.swift
//  MindfulMoments
//
//  Created by Willow Miller on 6/26/24.
//
import SwiftUI
struct NutritionChecker: View {
    @State private var foodName = ""
    @State private var addRequest = ""
    @State private var nameofFood = ""
    var foodLibrary = ["spagetti"]
    
    var body: some View {
        NavigationStack{
            VStack (spacing:20){
                Text("Mindful Moments")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.522, saturation: 0.294, brightness: 0.911))
                    .background(Color(red: 254 / 255, green: 234 / 255, blue: 160 / 255))
                
                
            }
            
                //Search Bar
                
                HStack{
                    TextField("Search", text: $foodName)
                        .border(Color.black)
                        .padding(.horizontal, 15.0)
                    Button("🔍") {
                        addRequest = " \(foodName) has not been added to Mindful Moments food library."
                        
                       
                      
                    }
                    
                    .padding(.trailing)
               
                }
            
            VStack{
                Text(addRequest)
                    .multilineTextAlignment(.center)
                
                Text("Nutrition Rater")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.522, saturation: 0.294, brightness: 0.911))
                    .padding(.top)
                
                   
                HStack(spacing:32){
                   
                    Image("uploadicon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:150)
                    
                    Button("Upload\nPhoto\nHere."){
                           }.buttonStyle(.bordered)
                        .tint(.blue).font(.largeTitle)
    
                    
                }
                    
            
            }
           
         
          
                
                Spacer()
                
                
            VStack(alignment: .center){
                    TextField("Name of Food", text: $nameofFood)
                    .border(Color.black, width:2)
                    
                   
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.537, saturation: 0.275, brightness: 0.961)/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Link(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=URL@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/) {
                    Text("Recipe & Ingredients")
                }
                
                
                    .padding()
                
                
                }
              
                
            
            .padding(.leading)
            
        }
    }
}
#Preview {
    NutritionChecker()
}

