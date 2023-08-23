//
//  MyTextField.swift
//  login
//
//  Created by phong070 on 11/08/2023.
//

import SwiftUI
import Foundation

struct MyTextField : View {
    var title : String
    var hint : String
    var icon : String
    @Binding var value : String
    var isSecure : Bool = false
    var type : UIKeyboardType = .default
    var submit : SubmitLabel = .next
    var body: some View {
        VStack(alignment: .leading) {
            Label{
                Text(title)
            } icon: {
                Image(icon)
            }
            if isSecure {
                SecureField(hint, text: $value)
                    .submitLabel(submit)
            }else{
                TextField(hint, text: $value)
                    .keyboardType(type)
                    .submitLabel(submit)
                    
            }
            Divider()
        }
    }
}

struct MyTextField_Previews : PreviewProvider {
    static var previews  : some View {
        MyTextField(title: "Userame", hint: "Enter username", icon: "ic_username", value: .constant(""),type : UIKeyboardType.default)
    }
}

