//
//  RecipeList.swift
//  Food
//
//  Created by Hugh Bromund on 7/5/20.
//

import SwiftUI

struct RecipeList: View {
    var body: some View {
        NavigationView {
            List(0 ..< 15) { item in
                NavigationLink(destination: Text("TEST")) {
                    RecipeListItem()
                }
            }.navigationBarTitle(Text("Recipes"))
            .navigationBarItems(trailing:
                                    Button(action: {print("button pressed")}, label: {
                                        Image(systemName: "plus.circle")
                                    })
            )
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList()
    }
}

struct RecipeListItem: View {
    var body: some View {
        HStack {
            Image(systemName: "star")
            VStack(alignment: .leading){
                Text("Ham and Cheese").font(.headline)
                Text("4 People").font(.subheadline)
            }
        }
    }
}
