//
//  AddRecipe.swift
//  Food
//
//  Created by Hugh Bromund on 7/5/20.
//

import SwiftUI

struct AddRecipe: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Button(action: {
                print("dismisses form")
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Dismiss")
            }.padding(.bottom, 50)
            Text("This is a modal")
        }
    }
}

struct AddRecipe_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipe()
    }
}
