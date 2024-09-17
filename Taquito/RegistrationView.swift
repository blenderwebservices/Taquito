//
//  RegistrationView.swift
//  Taquito
//
//  Created by Francisco on 15/09/24.
//
import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var phoneNumber: String = ""

    var body: some View {
        VStack {
            Text("Registro de Cliente")
                .font(.largeTitle)
                .padding()
            
            TextField("Correo Electrónico", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Número de Teléfono", text: $phoneNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                // Acción para registrar al cliente
            }) {
                Text("Registrarse")
                    .font(.title)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
