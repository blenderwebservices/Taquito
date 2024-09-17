//
//  SatisfactionSurveyView.swift
//  Taquito
//
//  Created by Francisco on 15/09/24.
//
import SwiftUI

struct SatisfactionSurveyView: View {
    @State private var rating: Int = 0
    @State private var comments: String = ""
    
    var body: some View {
        VStack {
            Text("Encuesta de Satisfacción")
                .font(.largeTitle)
                .padding()
            
            Text("Calificación:")
            Picker("Calificación", selection: $rating) {
                ForEach(1..<6) { number in
                    Text("\(number)").tag(number)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            TextField("Comentarios", text: $comments)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                // Acción para enviar encuesta
            }) {
                Text("Enviar")
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
