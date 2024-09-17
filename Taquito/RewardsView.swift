//
//  RewardsView.swift
//  Taquito
//
//  Created by Francisco on 15/09/24.
//

import SwiftUI

struct RewardsView: View {
    @State private var rewards: [String] = ["24/07/20 Pastor y Agua","24/08/16 Burrito"] // Datos de recompensas
    
    var body: some View {
        VStack {
            Text("Recompensas Digitales")
                .font(.largeTitle)
                .padding()
            
            List(rewards, id: \.self) { 
                reward in Text(reward)
            }
            
            // Botón para reclamar recompensas
        }
        .padding()
    }
}
