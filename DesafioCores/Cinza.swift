//
//  Cinza.swift
//  DEFINITIVO
//
//  Created by Turma01-19 on 11/02/25.
//

import SwiftUI

import SwiftUI

struct Cinza: View {
    var body: some View {
        ZStack{
            Color.gray.edgesIgnoringSafeArea(.top)
            Image(systemName: "paintpalette.fill")
                .resizable()
                .frame(width: 300, height:300)
        }
    }
}

#Preview {
    Cinza()
}
