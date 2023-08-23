//
//  DisplayActionView.swift
//  login
//
//  Created by phong070 on 06/08/2023.
//

import Foundation
import SwiftUI

struct DisplayActionView : View {
    
    @EnvironmentObject var showModel : ViewModel
   
    var body : some View {
        VStack {
            Text("Show count \(showModel.count)")
        }
    }
    
}

struct DisplayActionView_Previews : PreviewProvider {
    static var previews: some View {
        DisplayActionView()
    }
}


