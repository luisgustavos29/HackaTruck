//
//  Rosa.swift
//  DEFINITIVO
//
//  Created by Turma01-19 on 11/02/25.
//

import SwiftUI

import SwiftUI

struct Rosa: View {
    var body: some View {
        ZStack{
            Color.pink.edgesIgnoringSafeArea(.top)
            Image(systemName: "paintbrush.fill")
                .resizable()
                .frame(width: 300, height:300)
        }
    }
}


#Preview {
    Rosa()
}
