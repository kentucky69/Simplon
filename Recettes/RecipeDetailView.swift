//
//  RecipeView.swift
//  Recettes
//
//  Created by Ken Gassy on 24/06/2020.
//  Copyright © 2020 Ken Gassy. All rights reserved.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var item: MenuItem
    
    var body: some View {
        NavigationView {
            List {
                Image(item.mainImage)
                Text("INGREDIENTS")
                Text(item.description)
                    .padding()
                Text("INGREDIENTS")
                Text(item.description2)
                Spacer()
            }
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RecipeDetailView(item: MenuItem.example)
        }
    }
}
