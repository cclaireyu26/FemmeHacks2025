//
//  Checklist.swift
//  MindfulMoments
//
//  Created by Student on 6/26/24.
//
import SwiftUI
import PhotosUI

struct Photos: View {
    @State private var photosItems = [
        ChecklistItem(title: "Go take a 10 minute walk", isChecked: false),
        ChecklistItem(title: "Cook/bake your favorite dish", isChecked: false),
        ChecklistItem(title: "Spend time with a friend", isChecked: false),
        ChecklistItem(title: "Draw or read", isChecked: false),
        ChecklistItem(title: "Limit your screentime", isChecked: false),
        ChecklistItem(title: "Meditate", isChecked: false),
        ChecklistItem(title: "Write a letter", isChecked: false)
    ]
    
    @State private var newItemTitle: String = ""
    @State private var showAlert: Bool = false
    @State private var checkedItemTitle: String = ""
    @State private var dailySummary: String = ""
    
    @State var showPhotoActionSheet=false
    
    @State var showPhotoLibrary=false
    @State var selectedPhoto: PhotosPickerItem?
    @State var profileImage=Image("splashscreen-bee")
    
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10) {
             
                Text("Capture").fontWeight(.heavy).font(.custom("Cochin", size: 60))
                Text("Upload a picture of you completing a task. Capture your mindful moment.").font(.custom("Cochin", size: 27))
                Text("To view all memories, see your photo album in your profile.").font(.custom("Cochin", size: 23)).padding(.top,10)
                
                Button("Tap me or the picture below to upload a photo"){
                    showPhotoActionSheet.toggle()
                       }.buttonStyle(.bordered)
                    .tint(.pink).padding(.top,10)
                profileImage.resizable().frame(width:90,height:90).padding(.bottom,10).cornerRadius(8).onTapGesture{
                    showPhotoActionSheet.toggle()
                }
                .confirmationDialog("Upload a photo", isPresented: $showPhotoActionSheet){
                    Button{
                        showPhotoLibrary.toggle()
                    } label:{
                        Text("Photo Library")
                    }
                }
                .photosPicker(isPresented: $showPhotoLibrary, selection: $selectedPhoto, photoLibrary: .shared())
                .onChange(of: selectedPhoto){ newValue in guard let photoItem = selectedPhoto else{
                    return
                }
                    Task{
                        if let photoData=try await photoItem.loadTransferable(type: Data.self),
                           let uiImage = UIImage(data: photoData){
                            await MainActor.run{
                                profileImage = Image(uiImage:uiImage)
                            }
                        }
                    }
                }
                Text("Photo Album").fontWeight(.heavy).font(.custom("Cochin", size: 60))
                
                Text("Review your mindful moments. So proud of you for this many checked off tasks!").font(.custom("Cochin", size: 27)).padding(15)
                ZStack(alignment: .topLeading) {
                    TextEditor(text: $dailySummary)
                        .frame(height: 100)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .padding()
                    
                    if dailySummary.isEmpty {
                        Text("")
                            .foregroundColor(.gray)
                            .padding(.horizontal, 25)
                            .padding(.vertical, 140)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Reflect").fontWeight(.heavy).font(.custom("Cochin", size: 60))
                
                Text("Jot down some of those mindful moments of the day. Let's reflect.").font(.custom("Cochin", size: 27)).padding(15)
                ZStack(alignment: .topLeading) {
                    TextEditor(text: $dailySummary)
                        .frame(height: 100)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(10)
                        .padding()
                    
                    if dailySummary.isEmpty {
                        Text("")
                            .foregroundColor(.gray)
                            .padding(.horizontal, 25)
                            .padding(.vertical, 140)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.green.opacity(0.2))
            .edgesIgnoringSafeArea(.all)
           
            
        }
    }
        
    }


struct PhotosItem: Identifiable {
    let id = UUID()
    var title: String
    var isChecked: Bool
    var comment: String = ""
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
