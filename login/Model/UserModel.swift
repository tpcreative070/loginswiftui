//
//  UserModel.swift
//  login
//
//  Created by phong070 on 11/08/2023.
//

import Foundation

class UserModel : Hashable {
    var username : String?
    var password:  String?
    static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        return lhs.username == rhs.username
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(username)
    }
}
