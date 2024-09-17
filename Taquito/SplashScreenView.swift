//
//  SplashContentView.swift
//  Taquito
//
//  Created by Francisco on 15/09/24.
//

import SwiftUI
struct SplashScreenView: View {
    @State private var isActive = false

    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                // Imagen del taco con ojos (asegúrate de agregar la imagen a tu proyecto)
                Image("taquito-5")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Próximamente...")
                    .font(.title)
                    .foregroundColor(.orange)
                    .padding()
            }
            .onAppear {
                // Temporizador de 5 segundos antes de pasar a la segunda pantalla
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}
