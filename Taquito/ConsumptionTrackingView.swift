//
//  ConsumptionTrackingView.swift
//  Taquito
//
//  Created by Francisco on 15/09/24.
//
import SwiftUI

struct ConsumptionTrackingView: View {
    @State private var consumptions: [String] = ["24/05/01 $760","24/05/15 $660","24/05/31 $550","24/06/17 $350","24/07/06 $260"] // Datos de consumos
    
    var body: some View {
        VStack {
            Text("Seguimiento de Consumos")
                .font(.largeTitle)
                .padding()
            
            List(consumptions, id: \.self) { consumption in
                Text(consumption)
            }
            
            // Mostrar progreso hacia la recompensa
        }
        .padding()
    }
}
