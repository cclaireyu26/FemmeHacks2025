//
//  Checklist.swift
//  MindfulMoments
//
//  Created by Student on 6/26/24.
//
import SwiftUI

struct Checklist: View {
    @State private var checklistItems = [
        ChecklistItem(title: "Go take a 10 minute walk", isChecked: false),
        ChecklistItem(title: "Cook/bake your favorite dish", isChecked: false),
        ChecklistItem(title: "Activity 3", isChecked: false),
        ChecklistItem(title: "Activity 4", isChecked: false),
        ChecklistItem(title: "Activity 5", isChecked: false),
        ChecklistItem(title: "Activity 4", isChecked: false),
        ChecklistItem(title: "Activity 4", isChecked: false),
        ChecklistItem(title: "", isChecked: false)
    ]

    @State private var newItemTitle: String = ""

    var body: some View {
        VStack {
            Text("Checklist")
                .fontWeight(.heavy)
                .font(.custom("Cochin", size: 70))
                .padding(.top, 60)
                .foregroundColor(.black)
            
            List {
                ForEach($checklistItems) { $item in
                    ChecklistRow(checklistItem: $item)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .listStyle(InsetListStyle())
            .foregroundColor(.black)
            
            HStack {
                TextField("Add new item", text: $newItemTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 35)
                
                Button(action: addItem) {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                }
                .padding(.trailing)
            }
            .padding(.top, 10)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green.opacity(0.2))
        .edgesIgnoringSafeArea(.all)
        .navigationBarItems(trailing: EditButton())
    }
    
    private func deleteItems(at offsets: IndexSet) {
        checklistItems.remove(atOffsets: offsets)
    }
    
    private func moveItems(from source: IndexSet, to destination: Int) {
        checklistItems.move(fromOffsets: source, toOffset: destination)
    }
    
    private func addItem() {
        guard !newItemTitle.isEmpty else { return }
        checklistItems.append(ChecklistItem(title: newItemTitle, isChecked: false))
        newItemTitle = ""
    }
}

struct ChecklistRow: View {
    @Binding var checklistItem: ChecklistItem

    var body: some View {
        HStack {
            Image(systemName: checklistItem.isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 22, height: 22)
                .foregroundColor(checklistItem.isChecked ? .blue : .primary)
                .onTapGesture {
                    checklistItem.isChecked.toggle()
                }

            TextField("Enter item", text: $checklistItem.title)
                .foregroundColor(.black)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ChecklistItem: Identifiable {
    let id = UUID()
    var title: String
    var isChecked: Bool
}

struct Checklist_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
