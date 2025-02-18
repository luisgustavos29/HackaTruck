//
//  ContentView.swift
//  DEFINITIVO
//
//  Created by Turma01-19 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView{
                Rosa()
                    .tabItem{
                        Image(systemName: "paintbrush.fill")
                        Text("Rosa")
                    }
                Azul()
                    .tabItem{
                        Image(systemName: "paintbrush.pointed.fill")
                        Text("Azul")
                    }
                Cinza()
                    .tabItem{
                        Image(systemName: "paintpalette.fill")
                        Text("Cinza")
                    }
                Lista1()
                    .tabItem{
                        Image(systemName: "list.bullet")
                        Text("Lista")
                    }
                
                
            }
        }
    }
}


#Preview {
    ContentView()
}
