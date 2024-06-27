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

    var body: some View {
        VStack(spacing: 10) {
            Text("Checklist")
                .fontWeight(.heavy)
                .font(.custom("Cochin", size: 70))
                .padding(.top, 60)
                .foregroundColor(.black)
            
            HStack {
                TextField("Add new item", text: $newItemTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                
                Button(action: addItem) {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.blue)
                        .imageScale(.large)
                }
                .padding(.trailing)
            }
            .padding(.top, 10)
            
            List {
                ForEach($checklistItems) { $item in
                    ChecklistRow(checklistItem: $item, showAlert: $showAlert, checkedItemTitle: $checkedItemTitle)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .listStyle(InsetListStyle())
            .foregroundColor(.black)
            
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
        .navigationBarItems(trailing: EditButton())
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Congratulations!"),
                message: Text("You completed: \(checkedItemTitle)"),
                dismissButton: .default(Text("OK"))
            )
        }
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
    @Binding var showAlert: Bool
    @Binding var checkedItemTitle: String

    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: checklistItem.isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 22, height: 22)
                .foregroundColor(checklistItem.isChecked ? .blue : .primary)
                .onTapGesture {
                    checklistItem.isChecked.toggle()
                    if checklistItem.isChecked {
                        checkedItemTitle = checklistItem.title
                        showAlert = true
                    }
                }

            TextField("Enter item", text: $checklistItem.title)
                .foregroundColor(.black)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("Rating", text: $checklistItem.comment)
                .foregroundColor(.black)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 5)
                .frame(width: 80)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ChecklistItem: Identifiable {
    let id = UUID()
    var title: String
    var isChecked: Bool
    var comment: String = ""
}

struct Checklist_Previews: PreviewProvider {
    static var previews: some View {
        Checklist()
    }
}
