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
    @State private var value : String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                MyTextField(title: "Username",hint: "Enter username", icon: "ic_username", value: $value)
                
                Button("Dismiss") {
                    dismiss()
                }
            }
            
        }
    }
}

struct Preview_LoginView : PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
