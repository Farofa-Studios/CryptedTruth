//
//  ChallengeConcludedView.swift
//  CryptedTruth
//
//  Created by Ana Kiara Medeiros Braga on 25/02/23.
//

import SwiftUI

struct ChallengeConcludedView: View {
    
    @State private var victims = Victim.allVictims()
    
    var body: some View {
        
        
        ZStack {
            Color.darkColor
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    Text("Desafio concluído.")
                        .font(.custom("PTMono-Regular", size: 76))
                        .foregroundColor(.white)
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 498, height: 70)
                            .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0.1))
                        
                        Text("Novas informações liberadas")
                            .font(.custom("FuzzyBubbles-Regular", size: 31))
                            .foregroundColor(.white)
                    }
                    
                    NavigationLink {
                        BoardView()
                    } label: {
                        
                        Image("bt-voltar")
                            .resizable()
                            .frame(width: 724, height: 102)
                        
                    }
                    .buttonStyle(.card)
                    .offset(y: 156)
                }
                .frame(width: 1320, height: 742.5)
                //                    SubtitleView()
            }
        }
        
    }
}

struct ChallengeConcludedView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeConcludedView()
    }
}
