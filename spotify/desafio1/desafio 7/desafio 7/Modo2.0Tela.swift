//
//  Modo2.0Tela.swift
//  desafio 7
//
//  Created by Turma01-19 on 14/02/25.
//

import SwiftUI


struct NomeView: View {
    var name: String

    var body: some View {
        VStack {
            Text("Informação digitada:")
                .font(.headline)
                .padding()
            Text(name)
                .font(.title)
                .padding()
        }
        .padding()
    }
}
            
            #Preview {
                Modo2_0Tela()
            }
        
    
    
