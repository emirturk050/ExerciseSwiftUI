//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Emir Türk on 28.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List{
                ForEach(myFavorites) { favorite in
                    Section {
                        ForEach(favorite.elements) { element in
                            NavigationLink {
                                DetailsView(choosenFavoriteElement: element)
                            } label: {
                                Text(element.name)
                            }

                            
                        }
                    } header: {
                        Text(favorite.title)
                            
                    }

                }
            }.navigationTitle(Text("My Favorite Book"))
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
