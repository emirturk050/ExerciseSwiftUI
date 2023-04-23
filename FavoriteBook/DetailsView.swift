//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by Emir Türk on 28.03.2023.
//

import SwiftUI

struct DetailsView: View {
    var choosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(choosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio( contentMode:.fit)
            Text(choosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            Text(choosenFavoriteElement.description)
                .padding()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(choosenFavoriteElement: matrix)
    }
}
