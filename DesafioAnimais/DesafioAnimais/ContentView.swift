//
//  ContentView.swift
//  DesafioAnimais
//
//  Created by Turma01-19 on 18/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var dist = 0.0
    @State private var tempo = 0.0
    @State private var veloc = 0.0

    @State private var corFundo :Color = .gray
    @State private var imagem = "interro"
    

    var body: some View {
        ZStack{
            corFundo.ignoresSafeArea()
            
            VStack {
                
                VStack(content: {
                    
                    HStack(content: {
                        Text("Digite a distância (km):")
                    })
                    HStack(content: {
                        TextField("0", value: $dist, format: .number)
                            .multilineTextAlignment(.center)
                            .keyboardType(.decimalPad)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(3.0)
                            .frame(width: 100)
                    })
                    HStack(content: {
                        Text("Digite o tempo (h):")
                    })
                    HStack(content: {
                        TextField("0", value: $tempo, format: .number)
                            .multilineTextAlignment(.center)
                            .keyboardType(.decimalPad)
                            .background(Color.white.opacity(0.5))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 100)                })
                    
                    HStack(content: {
                        Button("Calcular") {
                            veloc = dist/tempo
                            
                            if(veloc > 0 && veloc <= 9.9){
                                imagem = "tartaruga"
                                corFundo = Color.green
                            }
                            else if(veloc > 10 && veloc <= 29.9){
                                imagem = "elefante"
                                corFundo = Color.blue
                            }
                            else if(veloc > 30 && veloc <= 69.9){
                                imagem = "AVESTRUZ"
                                corFundo = Color.orange
                            }
                            else if(veloc > 70 && veloc <= 89.9){
                                imagem = "leao"
                                corFundo = Color.yellow
                            }
                            else if(veloc > 90 && veloc <= 130){
                                imagem = "guepardo"
                                corFundo = Color.red
                            }
                            else{
                                imagem = "interro"
                                corFundo = Color.gray
                            }
                        }
                        .foregroundColor(.orange)
                        .background(.black)
                        
                    })
                })
                
                Spacer()
                //.frame(height:60)
                
                
                VStack(content: {
                    HStack(content: {
                        Text(String(format: "%.2f km/h", veloc))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    })
                    HStack(content: {
                        Image("\(imagem)")
                            .resizable()
                            .frame(width: 200, height:200)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    })
                })
                
                Spacer()
                //.frame(height:90)
                
                
                VStack(content: {
                    HStack(content: {
                        Text("TARTARUGA")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 30)
                        Text("(0 - 9.9km/h)")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 30)
                        Circle()
                            .frame(width:15)
                            .foregroundColor(Color.green)
                    })
                    
                    HStack(content: {
                        Text("ELEFANTE")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 30)
                        Text("(10 - 29.9km/h)")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 30)
                        Circle()
                            .frame(width:15)
                            .foregroundColor(Color.blue)
                    })
                    
                    HStack(content: {
                        Text("AVESTRUZ")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 30)
                        Text("(30 - 69.9km/h)")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 23)
                        Circle()
                            .frame(width:15)
                            .foregroundColor(Color.orange)
                    })
                    
                    HStack(content: {
                        Text("LEÃO")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 70)
                        Text("(70 - 89.9km/h)")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 30)
                        Circle()
                            .frame(width:15)
                            .foregroundColor(Color.yellow)
                    })
                    
                    HStack(content: {
                        Text("GUEPARDO")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 30)
                        Text("(90 - 130km/h)")
                            .foregroundColor(.white)
                        Spacer()
                            .frame(width: 30)
                        Circle()
                            .frame(width:15)
                            .foregroundColor(Color.red)
                    })
                })
                .background(Color.black)
                .cornerRadius(7.0)
                .padding()
            }
            //.background(corFundo)
        }
    }
}


#Preview {
    ContentView()
}
