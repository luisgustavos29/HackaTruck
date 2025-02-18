//
//  Modo2Tela.swift
//  desafio 7
//
//  Created by Turma01-19 on 14/02/25.
//

import SwiftUI


import SwiftUI

struct Modo2Tela: View {
    @State private var name: String = ""
    
    var body: some View {
        //NavigationStack {
            VStack {
                VStack {
                    Text("Bem-vindo")
                        .font(.headline)
                        .padding()
                    
                    TextField("Digite seu nome", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                  
                    
                    NavigationLink(destination: NomeView(name: name)) {
                        Text("Acessar Tela")
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding()
                .background(Color.pink)
                .cornerRadius(10)
                .foregroundColor(.white)
            }
            .navigationTitle("Modo 2")
       // }
    }
}

#Preview {
    Modo2Tela()
}
