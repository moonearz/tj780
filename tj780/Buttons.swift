//
//  Buttons.swift
//  tj780
//
//  Created by Munir Ben Jemaa on 3/25/24.
//

import SwiftUI

struct SearchButton: View {
    var input:String
    
    var body: some View {
        Button(action: search) {
            Text("Search")
                .bold()
                .foregroundStyle(Color(.black))
        }
        .buttonStyle(.bordered)
        .padding()
    }
    
    func search() {
        print("searching for " + input)
    }
    
}

struct AddButton: View {
    var body: some View {
        Button(action: add) {
            Text("Submit")
                .bold()
                .foregroundStyle(Color(.black))
        }
        .buttonStyle(.bordered)
        .padding()
    }
    
    func add() {
        print("adding something")
    }
}

struct BrowseButton: View {
    var body: some View {
        Button("Browse the shelves") {
            browse()
        }
        .foregroundColor(.black)
        .background(Color(.green))
        .buttonStyle(.bordered)
        .cornerRadius(10)
    }
    
    func browse() {
        print("you're browsing!")
    }
}

struct ManageButton: View {
    var body: some View {
        Button("Manage the shelves") {
            manage()
        }
        .foregroundColor(.black)
        .background(Color(.orange))
        .buttonStyle(.bordered)
        .cornerRadius(10)
    }
    
    func manage() {
        print("you're managing!")
    }
}

struct DeleteButton: View {
    var body: some View {
        Button("X") {
            delete()
        }
        .foregroundColor(.black)
        .buttonStyle(.bordered)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
        
        }
    
    func delete() {
        print("deleting something")
    }
}


#Preview {
    ManageButton()
}
