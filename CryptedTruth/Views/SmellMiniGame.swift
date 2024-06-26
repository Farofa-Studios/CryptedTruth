//
//  SmellMiniGame.swift
//  CryptedTruth
//
//  Created by Anna Alicia Milani on 23/02/23.
//

import Foundation
import SwiftUI

struct SmellMiniGame: View {
    
    let ingredientsOptionList = ["Op-Alecrim", "Op-Cereja", "Op-Chocolate", "Op-Limão", "Op-Lírio"].shuffled()
    
    let numOfItems = Aromas.allAromas.count
    
    @AppStorage("minigame1") var OK1 = false
    
    @State var currentSmellFase: Int = 0
    @State var isSmellGameFinished: Bool = false
    
    var body: some View {
    
        let recipe = Aromas.allAromas[currentSmellFase]
        NavigationView () {
            ZStack {
                TasteSmellStructure(
                    ingredientsOptionList: ingredientsOptionList,
                    recipe: recipe,
                    numOfRecipes: numOfItems,
                    title: "Cheiros \(recipe.title)",
                    idSubtitles: 3,
                    currentFase: $currentSmellFase,
                    isGameFinished: $isSmellGameFinished
                )
            }
            .onChange(of: isSmellGameFinished) { newValue in
                if newValue {
                    OK1 = true
                }
            }
            .navigationDestination(isPresented: $isSmellGameFinished) {
                ChallengeConcludedView(subtitle: MiniGameSubtitles.allMiniGameSubtitles[3].completed)
            }
        }
       
    }
    
}


struct SmellMiniGame_Previews: PreviewProvider {
    static var previews: some View {
        SmellMiniGame()
    }
}
