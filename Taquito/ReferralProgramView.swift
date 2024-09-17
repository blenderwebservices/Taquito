//
//  ReferralProgramView.swift
//  Taquito
//
//  Created by Francisco on 15/09/24.
//

import SwiftUI

struct ReferralProgramView: View {
    @State private var referralCode: String = ""
    @State private var invitedFriends: [String] = ["Marge","Roger","Janet"] // Amigos invitados
    
    var body: some View {
        VStack {
            Text("Programa de Referidos")
                .font(.largeTitle)
                .padding()
            
            TextField("Código de Referido", text: $referralCode)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                // Acción para enviar código de referido
            }) {
                Text("Invitar Amigos")
                    .font(.title)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            List(invitedFriends, id: \.self) {
                friend in Text(friend)
            }
        }
        .padding()
    }
}
