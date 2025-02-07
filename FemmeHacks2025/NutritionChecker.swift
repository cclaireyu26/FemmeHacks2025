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
    @State private var speed = 50.0
    @State private var isEditing = false
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
                    .padding()
                    
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
                    
                    NavigationLink(destination: UploadPhoto()) {
                        Text("Upload\nPicture\nHere.").fontWeight(.bold)
                            .tint(.yellow).font(.largeTitle)
        
                    }
    
                    
                }
                    
              
            }
           
         
          
                
                Spacer()
                
                
            VStack(alignment: .center){
                Text("Enter food here.")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                TextField("Name of Food", text: $nameofFood)
                    .border(Color.black, width:2)
                    .foregroundColor(.black)
                    .padding()
               
                Text("Rate: \(nameofFood)")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Slider(value: $speed,
                       in: 0...100,
                       onEditingChanged: { editing in
                           isEditing = editing
                       })
                Link(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=URL@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/) {
                    Text("Recipe & Ingredients")
                        .padding()
                        .border(Color(hue: 0.522, saturation: 0.294, brightness: 0.911), width: 3)
                        .tint(Color.blue)
                        .cornerRadius(8)
                }
                    .padding()
                
                
                }
              
                
            
            .padding(.leading)
            //insert here
            
        }
    }
}
#Preview {
    NutritionChecker()
}

