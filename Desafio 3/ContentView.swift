//
//  ContentView.swift
//  Desafio 3
//
//  Created by Turma01-19 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
    VStack(content: {
    

        HStack {
            Text("_cristiano")
                .font(.headline)
                .padding(.leading)

            Spacer()

            HStack(spacing: 10) {
                Image(systemName: "arrow.circlepath")
                Image(systemName: "line.3.horizontal")
            }
            .padding(.trailing)
        }
        
        Divider()
        Text("")
        

        HStack {
            ZStack {
                Image("cr7")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)

                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                    .offset(x: 55, y: 55)
            }

            VStack {
                HStack {
                    VStack {
                        HStack {
                            Text(" 8 ")
                                
                                .font(.system(size:15))
                        
                        }
                        HStack {
                            Text(" Posts ")
                                
                                .font(.system(size:14))
                            
                        }
                    }

                    VStack {
                        HStack {
                            Text(" 649 mi ")
                                .font(.system(size:15))
                        }
                        HStack {
                            Text(" Seguidores ")
                                .font(.system(size:14))
                        }
                    }

                    VStack {
                        HStack {
                            Text(" 593 ")
                            .font(.system(size:15))
                        }
                        HStack {
                            Text(" Seguindo ")
                                .font(.system(size:13))
                        }
                    }
                }
                HStack {
                    Button(action: {}) {
                        Text("Seguir")
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .background(Color.gray.opacity(0.6))
                    .buttonStyle(.bordered)
                    .cornerRadius(8)
                }
            }
        }

//           Button("Editar Perfil") {
//           }
//           .background(Color.gray.opacity(0.6))
//           .buttonStyle(.bordered)
//           .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment:.center)
//           .cornerRadius(8)
        
       

        
        
    })
    .padding()
        VStack(content: {
            HStack(content: {
                Text("Cristiano Ronaldo")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment:.leading)
            })
            HStack(content: {
                Text("Cinco UCL`s na conta e maior que o Messi!")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  alignment:.leading)

                    .font(.footnote)
            })
        })
        .padding()
        
        Divider()
        
        HStack(content: {
            VStack(content: {
                Image(systemName: "square.grid.3x3.fill")
                    .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            })
            
            VStack(content: {
                
                Image(systemName: "laptopcomputer")
            })
            VStack(content: {
                Image(systemName: "person.crop.circle.fill")
            })
        })
        
        Divider()
        

        
    HStack(content: {
                    
        VStack {
            
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
            
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
        }
        
        VStack {
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
            
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
        }
        
        VStack {
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
            
            HStack(content: {
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
            })
        }
        
            
    })
        
        .padding()
        
    }
}


#Preview {
    ContentView()
}

