
import SwiftUI

struct RecipeListView: View {
//    decode pour facilitter les appels des fichiers Json
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView{
            List {
                
//                Casser pour avoir les différentes catégories des recettes
                ForEach(menu) { section in
                        Section(header: Text(section.name)) {
                            ForEach(section.items) { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
        .navigationBarTitle("Recettes")
//                Autre modificateur d'énumération
        .listStyle(GroupedListStyle())
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
