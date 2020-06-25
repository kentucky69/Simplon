//
//  ContentView.swift
//  Recettes
//
//  Created by Turco Camille on 25/06/2020.
//  Copyright © 2020 Ken Gassy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
           TabView {
                 SearchView().tabItem({
                     Image(systemName: "magnifyingglass.circle")
                     Text("Search").tag(0)
                         })
                 PlanningView().tabItem({
                     Image(systemName: "calendar.circle")
                     Text("Planning").tag(1)            })
                     
                 HistoricalView(historical: Historical(name: "", image: "")).tabItem({
                     Image(systemName: "book.circle")
                     Text("Historical").tag(2)
                         })
                 FavoritesView(favorites: Favorites(name: "", image: "")).tabItem({
                     Image(systemName: "heart.circle")
                     Text("Favorites").tag(3)
                         })
             }.accentColor(.blue )    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
