//
//  ContentView.swift
//  Shared
//
//  Created by Hugh Bromund on 7/5/20.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tabs = .recipe

    private enum Tabs: Hashable {
        case recipe
        case mealPlan
        case shoppingList
    }
    
    var body: some View {
        TabView(selection: $selection) {
            RecipeList().tabItem {
                Image(systemName: (selection == Tabs.recipe ? "book.circle.fill" : "book.circle"))
                Text("Recipe List") }.tag(Tabs.recipe)
            MealPlan().tabItem {
                Image(systemName: (selection == Tabs.mealPlan ? "calendar.circle.fill" : "calendar.circle"))
                Text("Meal Plan") }.tag(Tabs.mealPlan)
            ShoppingList().tabItem {
                Image(systemName: (selection == Tabs.shoppingList ? "star.circle.fill" : "star.circle"))
                Text("Shopping List") }.tag(Tabs.shoppingList)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
