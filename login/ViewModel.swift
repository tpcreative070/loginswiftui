//
//  ViewModel.swift
//  login
//
//  Created by phong070 on 05/08/2023.
//

import Foundation
class ViewModel : ObservableObject {
    
    @Published var name : String = ""
    @Published var isSecure : Bool = false
    @Published var isEnabled : Bool = true
    @Published var count : Int = 0

}
