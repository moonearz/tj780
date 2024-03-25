//
//  ContentView.swift
//  tj780
//
//  Created by Munir Ben Jemaa on 3/24/24.
//

import SwiftUI

struct HomeView: View {
    @State var SKU:String = ""
    @State var productName:String = ""
    
    var body: some View {
        ZStack {
            VStack {
                Text("Welcome to the Wine Locator!")
                    .font(.title)
                    .padding(.top, 20)
                HStack {
                    TextField("SKU", text: $SKU)
                        .padding()
                    SearchButton(input:SKU)
                }
                .padding(.top, 10)
                HStack {
                    TextField("Product Name", text: $productName)
                        .padding()
                    SearchButton(input:productName)
                }
                Spacer()
                HStack {
                    VStack {
                        ManageButton()
                        BrowseButton()
                    }
                    Spacer()
                }
                Spacer()
                
                                
                
            }
        }
        .background(Color(.brown)
            .opacity(0.3))
    }
}

#Preview {
    HomeView()
}
