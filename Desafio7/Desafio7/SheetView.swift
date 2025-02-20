//
//  SheetView.swift
//  Desafio7
//
//  Created by Turma01-19 on 20/02/25.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @State private var color: Color = .blue
    var body: some View {
        ZStack{
            color.ignoresSafeArea()
            
            Button("Nome: Luis Gustavo \nSobrenome: Silva"){
                dismiss()
            }   .frame(width: 300)
                .foregroundColor(.white)
                .padding()
                .background(Color.pink)
                .cornerRadius(30)
        }
    }
}

#Preview {
    SheetView()
}
