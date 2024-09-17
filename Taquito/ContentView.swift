//
//  ContentView.swift
//  Taquito
//
//  Created by Francisco on 15/09/24.
//

import SwiftUI




struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: RegistrationView()) {
                    Text("Registro").font(.title)
                }
                NavigationLink(destination: QRScannerView(didFindCode: { code in
                    // Manejar el código QR escaneado
                })) {
                    Text("Escanear QR")
                        .font(.title)
                }
                NavigationLink(destination: ConsumptionTrackingView()) {
                    Text("Seguimiento de Consumos")
                        .font(.title)
                }
                NavigationLink(destination: NotificationsView()) {
                    Text("Notificaciones")
                        .font(.title)
                }
                NavigationLink(destination: RewardsView()) {
                    Text("Recompensas Digitales")
                        .font(.title)
                }
                NavigationLink(destination: ReferralProgramView()) {
                    Text("Programa de Referidos")
                        .font(.title)
                }
                NavigationLink(destination: SatisfactionSurveyView()) {
                    Text("Encuesta de Satisfacción")
                        .font(.title)
                }
            }
            .padding()
            .navigationTitle("Taquito")
        }
    }
}


#Preview {
    ContentView()
}
