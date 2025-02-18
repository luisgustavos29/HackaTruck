//
//  NomeView.swift
//  desafio 7
//
//  Created by Turma01-19 on 14/02/25.
//

import SwiftUI

struct nomeView: View {
    var name: String

    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
            
            VStack {
                Text("Volte:")
                    .font(.title)
                    .padding()
                    .foregroundColor(.black)
                Text(name)
                    .font(.title)
                    .padding()
                    .foregroundColor(.black)
            }
            .padding()
        }
        .navigationTitle("Detalhes")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    nomeView(name: "")
}
