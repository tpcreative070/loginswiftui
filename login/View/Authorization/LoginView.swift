//
//  LoginView.swift
//  login
//
//  Created by phong070 on 11/08/2023.
//

import Foundation
import SwiftUI

struct LoginView : View {
    private var title : String = "Username"
    private var hint : String = ""
    private var icon : String = ""
    @State private var valueUsername : String = ""
    @State private var valuePassword : String = ""
    @Environment(\.dismiss) var dismiss
    @State private var showSheet : Bool = false
  
    var body: some View {
        ZStack {
            ZStack {
                Button(action: {
                    dismiss()
                }) {
                    HStack {
                        Spacer()
                        Image("ic_close")
                            .foregroundColor(.black)
                    }
                    .padding(.top,10)
                    .padding(.trailing,20)
                }.frame(width: 50,height: 50)
            }
            .frame(
                maxWidth: .infinity,maxHeight: .infinity,
                alignment: Alignment.topTrailing)
            VStack(){
                MyTextField(title: "Username",hint: "Enter username", icon: "ic_username", value: $valueUsername,isSecure: false,type : .emailAddress,submit: .next)
                MyTextField(title: "Password",hint: "Enter password", icon: "ic_password", value: $valuePassword,isSecure: true,type : .default,submit: .done)

                Button {
                    
                } label: {
                    Text("Login")
                        .fontWeight(.bold)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                        .foregroundColor(.white)
                }
                .background(.blue)
                .cornerRadius(20)
                .padding(.top,20)
                Button {
                    showSheet.toggle()
                    print(showSheet)
                } label: {
                    Text("Do not have an account?")
                        .font(Font.system(size: 14))
                }.padding(.top,10)
                    .fullScreenCover(isPresented:$showSheet){
                        SignupView().onDisappear(){
                            print("onDisappear \(showSheet)")
                        }
                    }
                   
            }.padding(20)
        }
    }
    
}

struct LoginView_Previews : PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
