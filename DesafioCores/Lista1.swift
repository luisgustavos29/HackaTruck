//
//  Lista1.swift
//  DEFINITIVO
//
//  Created by Turma01-19 on 11/02/25.
//

import SwiftUI

struct Lista1: View {
    var body: some View {
        VStack{
            HStack{
                Text(" List")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            List{
                HStack{
                    
                    Text("Rosa")
                    Spacer()
                    Image(systemName: "paintbrush.fill")
                    
                }
                HStack{
                    Text("Azul")
                    Spacer()
                    Image(systemName: "paintbrush.pointed.fill")
                    
                }
                HStack{
                    Text("Cinza")
                    Spacer()
                    Image(systemName: "paintpalette.fill")
                }
            }
            
        }
    }
}

#Preview {
    Lista1()
}
