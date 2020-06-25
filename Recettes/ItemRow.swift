import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    
//    Dictionnaire de couleur pour chaque restriction
    static let colors: [String: Color] = ["D": .purple, "G": .black, "V": .green]
    
    var body: some View {
        NavigationLink(destination: RecipeDetailView(item: item)) {
            
            HStack {
                
                Image(item.thumbnailImage)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 2))
                    
                VStack(alignment: .leading) {
                    
                    Text(item.name)
                        .fontWeight(.bold)
                        .font(.headline)
                    Text(item.niveau)
                        .fontWeight(.light)
                }
                
                Spacer()
                
//                Catégorie Vegetarien, Gluten
                ForEach(item.restrictions, id: \.self) {
                    restriction in
                    Text(restriction)
                        .font(.caption)
                        .fontWeight(.black)
                        .padding(5)
                        .background(Self.colors[restriction, default: .black])
                        .clipShape(Circle())
                        .foregroundColor(.white)
                }
            }
        }
    }
}



struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
        
    }
}
