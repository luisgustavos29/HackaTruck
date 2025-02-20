//
//  ContentView.swift
//  Desafio7
//
//  Created by Turma01-19 on 20/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    @State private var color: Color = .blue
    var body: some View {
        NavigationView {
            
            
            ZStack{
                color.ignoresSafeArea()

            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                
                Spacer()
                    .frame(height: 150)
                
                VStack(spacing: 16) {
                    NavigationLink(destination: PrimeiraView()) {
                        Text("Modo 1")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: SegundaView()) {
                        Text("Modo 2")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        showSheet.toggle()
                    }) {
                        Text("Modo 3")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                .sheet(isPresented: $showSheet) {
                    SheetView()
                }
            }
        }
    }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
