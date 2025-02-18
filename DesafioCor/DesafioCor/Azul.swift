//
//  Azul.swift
//  DesafioCor
//
//  Created by Turma01-19 on 18/02/25.
//

import SwiftUI

struct Azul: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.pointed.fill")
                .resizable()
                .frame(width: 300, height:300)
        }
        
    }
}


#Preview {
    Azul()
}
