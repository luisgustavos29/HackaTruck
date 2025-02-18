//
//  Modo1Tela.swift
//  desafio 7
//
//  Created by Turma01-19 on 14/02/25.
//

import SwiftUI


struct Modo1Tela: View {
    var body: some View {
        VStack {
            Text("Nome: Leo\nSobrenome: Moura")
                .padding()
                .background(Color.pink)
                .cornerRadius(10)
                .foregroundColor(.white)
        }
        .navigationTitle("Modo 1")
        .foregroundColor(.black)
    }
}

#Preview {
    Modo1Tela()
    
}
