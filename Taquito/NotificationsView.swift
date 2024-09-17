//
//  NotificationsView.swift
//  Taquito
//
//  Created by Francisco on 15/09/24.
//

import SwiftUI

struct NotificationsView: View {
    @State private var notifications: [String] = ["Martes 2x1 en Taquitos de Pastor", "Jueves 3x2 en Burritos"] // Datos de notificaciones
    
    var body: some View {
        VStack {
            Text("Notificaciones")
                .font(.largeTitle)
                .padding()
            
            List(notifications, id: \.self) { notification in
                Text(notification)
            }
        }
        .padding()
    }
}

