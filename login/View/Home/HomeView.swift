//
//  ContentView.swift
//  login
//
//  Created by phong070 on 05/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isSecure : Bool = true
    @StateObject private var model  = ViewModel()
    @State private var showsheet : Bool = false
    var body: some View {
        NavigationStack {
            VStack(spacing:50) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                CustomButton(isSecure: $isSecure, onPress  :  {
                   print("Action clicked")
                   model.count += 1
                })
                NavigationLink {
                    DisplayActionView()
                }label: {
                    Text("Go")
                }
                Button("Login") {
                    showsheet.toggle()
                }.sheet(isPresented: $showsheet) {
                    LoginView()
                }
            }
        }.environmentObject(model)
    }
}

struct CustomButton : View {
    
    @Binding var isSecure : Bool
    var onPress : (() ->(Void))
    var body: some View {
        VStack {
            Button(isSecure ? "Pause" : "Play"){
                isSecure.toggle()
                self.onPress()
            }.onChange(of: isSecure) { newValue in
                print(isSecure)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
