//
//  UploadPhoto.swift
//  MindfulMoments
//
//  Created by Student on 6/27/24.
//

import SwiftUI
import PhotosUI

struct UploadPhoto: View {
    @State var showPhotoActionSheet=false
    
    @State var showPhotoLibrary=false
    @State var selectedPhoto: PhotosPickerItem?
    @State var profileImage=Image("splashscreen-bee")
    var body: some View {
        Button("Upload Photo"){
               }.buttonStyle(.bordered)
            .tint(.pink)
        Image("splashscreen-bee").resizable().frame(width:90,height:90).cornerRadius(8).onTapGesture{
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
        }}
    }
}

#Preview {
    UploadPhoto()
}
