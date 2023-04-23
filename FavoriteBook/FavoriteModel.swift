//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Emir Türk on 28.03.2023.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
    
}

struct FavoriteElements : Identifiable {
    
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
    
}

//RAPPER
let allame = FavoriteElements(name: "Allame", imagename: "allame", description: "No 1 of rapper")
let joker = FavoriteElements(name: "Joker", imagename: "joker", description: "No 2 of rapper")
let hidra = FavoriteElements(name: "Hidra", imagename: "hidra", description: "No 3 of rapper")

let favoriteRapper = FavoriteModel(title: "Favorite Rapper", elements: [allame,joker,hidra])

//MOVİE
let prestige = FavoriteElements(name: "Prestige", imagename: "prestige", description: "No 1 of Movie")
let thedarkknight = FavoriteElements(name: "The Dark Knight", imagename: "thedarkknight", description: "No 2 of Movie")
let matrix = FavoriteElements(name: "Matrix", imagename: "matrix", description: "No 3 of Movie")

let favoriteMovie = FavoriteModel(title: "Favorite Movie", elements: [prestige,thedarkknight,matrix])

let myFavorites = [favoriteRapper,favoriteMovie]
